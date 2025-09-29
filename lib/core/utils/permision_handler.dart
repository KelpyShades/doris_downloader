import 'package:permission_handler/permission_handler.dart';

Future<bool> requestPermission() async {
  var status = await Permission.storage.status;
  if (!status.isGranted) {
    status = await Permission.storage.request();
  }

  // for android 11 and above
  var manageStatus = await Permission.manageExternalStorage.status;
  if (!manageStatus.isGranted) {
    manageStatus = await Permission.manageExternalStorage.request();
  }
  return status.isGranted || manageStatus.isGranted;
}
