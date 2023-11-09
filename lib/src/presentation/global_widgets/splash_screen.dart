import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(microseconds: 1), () {
      GoRouter.of(context).pushReplacement("/guard");
    });
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text("SplashScreen"), CircularProgressIndicator()],
        ),
      ),
    );
  }
}
