import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

const _kHiveBoxSystemName = 'systemBoxName';
const _kHiveBoxDesignName = 'designBoxName';
const _kHiveBoxStorageName = 'storageBoxName';

enum BoxNames { system, design, storage }

class AppStorage {
  static AppStorage? _instance;

  late Box systemBox;
  late Box designBox;
  late Box storageBox;

  bool _isInitialized = false;

  AppStorage._();

  factory AppStorage() {
    _instance = _instance ?? AppStorage._();
    return _instance!;
  }

  static AppStorage get instance => _instance ??= AppStorage();

  Future<void> initialize() async {
    if (!_isInitialized) {
      var doc = await getApplicationDocumentsDirectory();
      Hive.init(doc.path);
      await Hive.openBox(_kHiveBoxSystemName);
      await Hive.openBox(_kHiveBoxDesignName);
      await Hive.openBox(_kHiveBoxStorageName);
      systemBox = Hive.box(_kHiveBoxSystemName);
      designBox = Hive.box(_kHiveBoxDesignName);
      storageBox = Hive.box(_kHiveBoxStorageName);
      _isInitialized = true;
    }
  }

  void setValue<T>(
      {required String key,
      required T? value,
      required BoxNames boxName}) async {
    switch (boxName) {
      case BoxNames.system:
        await systemBox.put(key, value);
      case BoxNames.design:
        await designBox.put(key, value);
      case BoxNames.storage:
        await storageBox.put(key, value);
    }
  }

  T? getValue<T>(
      {required String key, required BoxNames boxName, T? defaultValue}) {
    switch (boxName) {
      case BoxNames.system:
        return systemBox.get(key, defaultValue: defaultValue);
      case BoxNames.design:
        return designBox.get(key, defaultValue: defaultValue);
      case BoxNames.storage:
        return storageBox.get(key, defaultValue: defaultValue);
    }
  }

  Future<void> clearAllData({bool storage = false}) async {
    await systemBox.clear();
    await designBox.clear();
    if (storage) {
      await storageBox.clear();
    }
  }
}
