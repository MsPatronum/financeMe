import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class SettingsPage extends StatelessWidget {
  final String name;
  const SettingsPage({super.key, required this.name});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text(name),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => context.goNamed("home"), 
          child: const Text("Go to Home Page"))
      ),
    );
  }
}