import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:goal_stream/screens/error_screen/error_screen.dart';
import 'package:goal_stream/themes/app_theme.dart';
import 'resources/utils/app_size.dart';
import 'routes/app_pages.dart';
import 'routes/app_routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    AppSize.screenHeight = MediaQuery.of(context).size.height;
    AppSize.screenWidth = MediaQuery.of(context).size.width;

    return GetMaterialApp(
      builder: (context, child) {
        ErrorWidget.builder = (FlutterErrorDetails errorDetails) {
          return ErrorScreen(errorDetails: errorDetails);
        };
        return child!;
      },
      debugShowCheckedModeBanner: false,
      title: "My App",
      initialRoute: AppRoutes.initial,
      getPages: appRoutesFile,
      theme: lightTheme,
    );
  }
}