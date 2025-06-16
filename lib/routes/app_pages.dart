import 'package:get/get.dart';
import 'package:goal_stream/routes/app_routes.dart';
import '../screens/onboard/onboard_screen.dart';
import 'bindings/all_bindings.dart';

final appRoutesFile = [
  // GetPage(name: AppRoutes.initial , page: ()=> const HomeScreen(), binding: SplashBinding()),
  GetPage(name: AppRoutes.initial , page: ()=> const OnboardScreen(), binding: OnboardBinding())
];