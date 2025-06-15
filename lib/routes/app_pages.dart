import 'package:get/get.dart';
import 'package:goal_stream/routes/app_routes.dart';

import '../screens/home/home_screen.dart';

final appRoutesFile = [
  GetPage(name: AppRoutes.initial , page: ()=> const HomeScreen())
];