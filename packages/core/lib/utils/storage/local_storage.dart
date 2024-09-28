import 'dart:io';
import 'dart:typed_data';

import 'package:core/models/app_error.dart';
import 'package:path_provider/path_provider.dart';

class LocalStorage {
  static LocalStorage? _instance;

  LocalStorage._();

  factory LocalStorage() => _instance ?? LocalStorage._();

  static LocalStorage get instance => _instance ??= LocalStorage();

  Future<String> getPath() async {
    late Directory dir;
    try {
      dir = await getApplicationCacheDirectory();
    } catch (e) {
      dir = await getApplicationDocumentsDirectory();
      throw AppException(message: 'Ошибка');
    }
    return dir.path;
  }

  Future<String> getFilesPath() async {
    return (await getApplicationSupportDirectory()).path;
  }

  Future<String> saveFile(String name, Uint8List bytes) async {
    String path = await getPath();
    File file = File('$path/$name');
    return (await file.writeAsBytes(bytes).then((value) => value.path));
  }

  Future<File?> getFile(String name) async {
    String path = await getPath();
    File file = File('$path/$name');
    return await file.exists() ? file : null;
  }

  Future<Directory> getPathByType(FileLocation location) async {
    switch (location) {
      case FileLocation.files:
        return await getApplicationSupportDirectory();
      case FileLocation.cache:
        return await getApplicationCacheDirectory();
      case FileLocation.document:
        return await getApplicationDocumentsDirectory();
    }
  }

  Future<void> deleteFile(String name, FileLocation location) async {
    Directory directory = await getPathByType(location);
    File file = File('${directory.path}/$name');
    if (file.existsSync()) {
      await file.delete();
    }
  }
}

enum FileLocation {
  files,
  cache,
  document,
}
