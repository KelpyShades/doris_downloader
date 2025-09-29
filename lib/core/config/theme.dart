import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

mixin AppColors {
  static const Color primary = Color(0xFF2094f3);
  static const Color secondary = Color(0x80666666);
  static const Color background = Color(0xFFE4F3FF);
  static const Color text = Color(0xFF000000);
  static const Color error = Color(0xFFef4444);
}

final appThemeProvider = Provider<ThemeData>((ref) {
  return ThemeData(
    primaryColor: AppColors.primary,
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.primary,
      brightness: Brightness.light,
      surface: AppColors.background,
      secondary: AppColors.secondary,
      onSurface: AppColors.text,
      onSecondary: AppColors.text,
      onPrimary: AppColors.text,
    ),
    useMaterial3: true,
    brightness: Brightness.light,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      titleTextStyle: GoogleFonts.poppinsTextTheme().titleLarge?.copyWith(
        color: AppColors.text,
      ),
    ),
    scaffoldBackgroundColor: AppColors.background,
    textTheme: GoogleFonts.poppinsTextTheme(
      TextTheme(bodyLarge: TextStyle(color: AppColors.text)),
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.primary),
        borderRadius: BorderRadius.circular(15),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.primary),
        borderRadius: BorderRadius.circular(15),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.text),
        borderRadius: BorderRadius.circular(15),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.error),
        borderRadius: BorderRadius.circular(15),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.error),
        borderRadius: BorderRadius.circular(15),
      ),
      disabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.text),
        borderRadius: BorderRadius.circular(15),
      ),
      errorStyle: TextStyle(color: AppColors.error),
      hintStyle: TextStyle(color: AppColors.text),
      labelStyle: TextStyle(color: AppColors.text),
      prefixStyle: TextStyle(color: AppColors.text),
    ),
  );
});
