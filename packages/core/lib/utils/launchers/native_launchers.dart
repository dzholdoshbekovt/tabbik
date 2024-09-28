import 'package:core/models/app_error.dart';
import 'package:url_launcher/url_launcher.dart';

class AppLaucnher {
  static Future<void> openPhone(String phone) async {
    Uri uri = Uri(scheme: 'tel', path: phone);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw AppException(
          message: 'Не удалось выполнить действие', type: ExceptionType.launch);
    }
  }
}
