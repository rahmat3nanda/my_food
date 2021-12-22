import 'package:my_food/common/configs.dart';
import 'package:permission_handler/permission_handler.dart';

export 'package:permission_handler/permission_handler.dart';

class PermissionService {
  static Future reqAllPermissions() async {
    return await Future.forEach(
      kPermissions,
      (Permission element) async {
        return await element.request();
      },
    );
  }

  static Future reqPermissions(Permission permission) async {
    return permission.request();
  }

  static Future checkPermission(Permission permission) async {
    return permission.status;
  }

  static Future openSettings() async {
    return openAppSettings();
  }
}
