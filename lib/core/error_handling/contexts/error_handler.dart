import 'dart:async';
import 'dart:developer';
import 'package:doris_downloader/core/error_handling/contexts/contexts/custom_error.dart';
import 'package:doris_downloader/core/error_handling/contexts/contexts/network_error_handler.dart';
import 'package:doris_downloader/core/error_handling/contexts/contexts/unknown_error_handler.dart';
import 'package:doris_downloader/core/widgets/snackbar.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/misc.dart';

Future<T?> asyncErrorWrapper<T>(
  Future<T> Function() operation, {
  T Function()? finallyOperation,
  BuildContext? context,
  String? successMessage,
  String? errorMessage,
  String? debugTrace,
}) async {
  try {
    final result = await operation();

    if (finallyOperation != null) {
      finallyOperation();
    }
    if (successMessage != null && context != null && context.mounted) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        customSnackbar(
          successMessage,
          type: SnackType.success,
          context: context,
        );
      });
    }

    return result;
  } catch (e, stack) {
    if (e is ProviderException && context != null && context.mounted) {
      log(
        'Unwrapping ProviderException to get inner exception: ${e.exception.runtimeType}',
      );
      return _handleError(
        e.exception,
        stack,
        finallyOperation,
        context,
        errorMessage,
        debugTrace,
      );
    }
    if (context != null && context.mounted) {
      return _handleError(
        e,
        stack,
        finallyOperation,
        context,
        errorMessage,
        debugTrace,
      );
    }
  }
  return null;
}

T? _handleError<T>(
  Object error,
  StackTrace stack,
  Function()? finallyOperation,
  BuildContext? context,
  String? errorMessage,
  String? debugTrace,
) {
  // Run finally operation regardless of error
  if (finallyOperation != null) {
    log('Running finally operation after error');
    finallyOperation();
  }

  if (context != null && context.mounted) {
    log('Translating error for UI');
    ErrorTranslator.translate(
      error,
      errorMessage: errorMessage,
      context: context,
      trace: debugTrace ?? stack.toString(),
    );
    return null;
  } else {
    log('No context available to show error, rethrowing');
    throw error;
  }
}

T? syncErrorWrapper<T>(
  T Function() operation, {
  T Function()? finallyOperation,
  BuildContext? context,
  String? successMessage,
  String? errorMessage,
  String? debugTrace,
}) {
  try {
    final result = operation();

    if (successMessage != null && context != null && context.mounted) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        customSnackbar(
          successMessage,
          type: SnackType.success,
          context: context,
        );
      });
    }

    return result;
  } catch (e) {
    if (context != null && context.mounted) {
      ErrorTranslator.translate(
        e,
        errorMessage: errorMessage,
        context: context,
        trace: debugTrace,
      );
      if (finallyOperation != null) {
        finallyOperation();
      }
      return null;
    } else {
      rethrow;
    }
  }
}

// lib/common/error_handling/error_translator.dart

class ErrorTranslator {
  // The registry maps error types to their handlers
  static final Map<Type, String Function(dynamic, {String? trace})>
  _errorHandlers = {};

  // Static initialization - each handler registers itself
  static void _initializeHandlers() {
    if (_errorHandlers.isNotEmpty) return; // Already initialized

    NetworkErrorHandler.register(_errorHandlers);
    CustomErrorHandler.register(_errorHandlers);

    // More handlers can be added here as the app grows
  }

  static void translate(
    dynamic error, {
    String? errorMessage,
    BuildContext? context,
    SnackType? type,
    String? trace,
  }) {
    _initializeHandlers();

    // Look up the handler for this specific error type
    String translation = '';

    // Update after Riverpods now throws ProviderException instead of the actual exception

    // dynamic errorObject = error;
    // if (errorObject is ProviderException) {
    //   errorObject = errorObject.exception;
    // }

    final handler =
        _errorHandlers[error
            .runtimeType];

    if (handler == null) {
      translation = UnknownErrorHandler.handleError(error, trace: trace);
    } else {
      translation = handler(error, trace: trace);
    }

    if (context != null) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        customSnackbar(
          errorMessage ?? translation,
          type: type ?? SnackType.error,
          context: context,
        );
      });
    }
  }
}
