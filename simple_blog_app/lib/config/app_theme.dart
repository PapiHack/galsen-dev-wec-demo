import 'package:flutter/material.dart';
import 'package:simple_blog_app/config/config.dart';

class AppTheme {
  static ThemeData get theme => ThemeData(
        fontFamily: 'Inter',
        primaryColor: AppColors.black,
        backgroundColor: AppColors.background,
        scaffoldBackgroundColor: AppColors.background,
        bottomSheetTheme: const BottomSheetThemeData(
          backgroundColor: AppColors.background,
        ),
        focusColor: AppColors.strokeInputActif,
        brightness: Brightness.light,
      );
}
