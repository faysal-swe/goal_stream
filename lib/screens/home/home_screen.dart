import 'package:flutter/material.dart';
import 'package:flutter_templete/localization/app_static_key.dart';
import 'package:flutter_templete/widgets/app_text/app_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AppText(title: AppStaticKey.helloWorld),
      ),
    );
  }
}