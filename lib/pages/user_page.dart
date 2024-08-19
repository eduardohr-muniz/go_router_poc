import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Page'),
      ),
      body: ElevatedButton(
        onPressed: () => context.goNamed('user_name', pathParameters: {"name": "Jhon"}),
        child: const Text("Go Jhon"),
      ),
    );
  }
}
