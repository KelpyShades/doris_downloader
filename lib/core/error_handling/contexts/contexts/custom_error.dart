import 'dart:developer';

class CustomErrorHandler {
  static void register(
    Map<Type, String Function(dynamic, {String? trace})> registry,
  ) {
    registry[CustomException] = _handleError;
  }

  static String _handleError(dynamic error, {String? trace}) {
    if (error is CustomException) {
      final translation = _handleCustomException(error);
      // logger.error(translation, error: error, trace: trace);
      log(translation);
      return translation;
    } else {
      // logger.error("Unknown Network Error", error: error, trace: trace);
      log("Unknown Network Error");
      return "Unknown Network Error";
    }
  }

  static String _handleCustomException(CustomException error) {
    return error.message;
  }
}

class CustomException implements Exception {
  final String message;
  CustomException(this.message);
}
