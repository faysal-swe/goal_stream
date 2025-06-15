import 'package:flutter/material.dart';
import 'package:goal_stream/widgets/app_text/app_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AppText(title: "Hello world", style: Theme.of(context).textTheme.titleLarge!.copyWith(color: Colors.black)),
      ),
    );
  }
}