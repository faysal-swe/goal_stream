import 'package:get/get.dart';
import 'package:goal_stream/controllers/onboard_screen_controller.dart';
import 'package:goal_stream/controllers/splash_screen_controller.dart';

// splash screen bindings
class SplashBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<SplashScreenController>(()=> SplashScreenController());
  }  
}

class OnboardBinding extends Bindings{
  @override
  void dependencies() {
   Get.lazyPut<OnboardScreenController>(()=> OnboardScreenController());
  }
  
}