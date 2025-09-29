// import 'dart:developer';

// import 'package:dio/dio.dart';

// class DioErrorHandler {
//   static void register(
//     Map<Type, String Function(dynamic, {String? trace})> registry,
//   ) {
//     registry[DioException] = _handleError;
//   }

//   static String _handleError(dynamic error, {String? trace}) {
//     if (error is DioException) {
//       final translation = _handleCustomException(error);
//       // logger.error(translation, error: error, trace: trace);
//       log(translation);
//       return translation;
//     } else {
//       // logger.error("Unknown Network Error", error: error, trace: trace);
//       log("Unknown Network Error");
//       return "Unknown Network Error";
//     }
//   }

//   static String _handleCustomException(DioException error) {
//     return error.response;
//   }
// }
