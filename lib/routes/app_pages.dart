import 'package:flutter_templete/routes/app_routes.dart';
import 'package:get/get.dart';

import '../screens/home/home_screen.dart';

final appRoutesFile = [
  GetPage(name: AppRoutes.initial , page: ()=> const HomeScreen())
];