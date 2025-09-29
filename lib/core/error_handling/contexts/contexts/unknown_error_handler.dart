import 'dart:developer';

class UnknownErrorHandler {
  static String handleError(dynamic error, {String? trace}) {
    log("An unknown error occurred: $error $trace");
    return "An unknown error occurred! Please try again later.";
  }
}
