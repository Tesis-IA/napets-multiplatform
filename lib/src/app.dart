import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class InitialView extends StatelessWidget {
  const InitialView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home"), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("data"),
            TextButton(
                onPressed: () => context.go('/login'),
                child: const Text("Login")),
            TextButton(
                onPressed: () => context.go('/loginn'),
                child: const Text("Login Nativo"))
          ],
        ),
      ),
    );
  }
}
