import 'package:flutter/material.dart';
import 'package:goal_stream/resources/values/app_colors.dart';
import 'package:goal_stream/themes/text_styles.dart';

final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: AppColors.primary,
  textTheme: appTextTheme,
  colorScheme: const ColorScheme.light(
    primary: AppColors.primary,
    secondary: AppColors.secondary,
    error: AppColors.error,
  ),
);

// final ThemeData darkTheme = ThemeData(
//   brightness: Brightness.dark,
//   primaryColor: AppColors.primary,
//   scaffoldBackgroundColor: AppColors.darkGray,
//   colorScheme: const ColorScheme.dark(
//     primary: AppColors.primary,
//     secondary: AppColors.secondary,
//     error: AppColors.error,
//     surface: AppColors.darkGray,
//   ),
// );