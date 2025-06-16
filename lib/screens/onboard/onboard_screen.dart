import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:goal_stream/controllers/onboard_screen_controller.dart';
import '../../resources/values/app_images.dart';


class OnboardScreen extends GetView<OnboardScreenController> {
  const OnboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(AppImages.onboardImage), fit: BoxFit.cover)
        ),
      ),
    );
  }
}