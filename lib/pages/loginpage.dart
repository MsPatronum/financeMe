import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: const Text("Login"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => context.go("/"), 
          child: const Text("Go to Home Page"))
      ),
    );
  }
}