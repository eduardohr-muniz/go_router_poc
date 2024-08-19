import 'package:flutter/material.dart';

class UserNamePage extends StatelessWidget {
  final String? name;
  const UserNamePage({
    super.key,
    this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(name ?? 'User name page'),
        ),
        body: const Text('Hello'));
  }
}
