import 'dart:async';
import 'dart:developer';
import 'dart:io';

class NetworkErrorHandler {
  static void register(
    Map<Type, String Function(dynamic, {String? trace})> registry,
  ) {
    registry[SocketException] = _handleError;
    registry[TimeoutException] = _handleError;
  }

  static String _handleError(dynamic error, {String? trace}) {
    if (error is SocketException) {
      final translation = _handleSocketException(error);
      // logger.error(translation, error: error, trace: trace);
      log(translation);
      return translation;
    } else if (error is TimeoutException) {
      final translation = _handleTimeoutException(error);
      // logger.error(translation, error: error, trace: trace);
      log(translation);
      return translation;
    } else {
      // logger.error("Unknown Network Error", error: error, trace: trace);
      log("Unknown Network Error");
      return "Unknown Network Error";
    }
  }

  static String _handleSocketException(SocketException error) {
    return "A network error occurred. Please check your internet connection";
  }

  static String _handleTimeoutException(TimeoutException error) {
    return "Network Timeout while processing request. Please try again later";
  }
}
