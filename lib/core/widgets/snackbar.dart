import 'package:another_flushbar/flushbar.dart';
import 'package:doris_downloader/core/config/theme.dart';
import 'package:flutter/material.dart';

enum SnackType { warning, success, info, error }

class FlushbarManager {
  static final FlushbarManager _instance = FlushbarManager._internal();
  factory FlushbarManager() => _instance;
  FlushbarManager._internal();

  Flushbar? _currentFlushbar;

  void showFlushbar(
    String content, {
    SnackType type = SnackType.info,
    int duration = 2,
    bool isDismissible = true,
    BuildContext? context,
  }) {
    if (context == null) return;
    // Dismiss current flushbar if it exists
    _currentFlushbar?.dismiss();

    _currentFlushbar = Flushbar(
      messageText: Text(
        content,
        textAlign: TextAlign.center,
        style: const TextStyle(color: AppColors.background),
      ),
      margin: const EdgeInsets.all(7),
      borderRadius: BorderRadius.circular(25),
      backgroundColor: AppColors.text,
      icon: Icon(
        type == SnackType.success
            ? Icons.check_circle_outline_rounded
            : type == SnackType.warning
            ? Icons.warning_amber_rounded
            : type == SnackType.info
            ? Icons.info_outline_rounded
            : Icons.error_outline_rounded,
        color: type == SnackType.success
            ? Colors.green
            : type == SnackType.warning
            ? Colors.yellow
            : type == SnackType.info
            ? Colors.blue
            : Colors.red,
      ),
      flushbarPosition: FlushbarPosition.TOP,
      duration: Duration(seconds: duration),
      isDismissible: isDismissible,
      onStatusChanged: (FlushbarStatus? status) {
        if (status == FlushbarStatus.DISMISSED) {
          _currentFlushbar = null;
        }
      },
    );
    _currentFlushbar!.show(context);
  }

  void dismissCurrent() {
    _currentFlushbar?.dismiss();
    _currentFlushbar = null;
  }
}

void customSnackbar(
  String content, {
  SnackType type = SnackType.info,
  int duration = 2,
  bool isDismissible = true,
  required BuildContext? context,
}) {
  FlushbarManager().showFlushbar(
    content,
    type: type,
    duration: duration,
    isDismissible: isDismissible,
    context: context,
  );
}
