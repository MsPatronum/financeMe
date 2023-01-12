import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  String texto = "Este será o título";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Homepage"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              //PASSANDO UM ÚNICO VALOR PARA A PRÓXIMA TELA
              onPressed: () => context.goNamed(
                'settings', 
                params: {"name":texto},
                queryParams: {
                  "email":"nicoleeguido@gmail.com",
                  "idade": "22",
                  "pais":"Brasil",
                }
              ),               
              child: const Text("Go to Settings page"),
            ),
            ElevatedButton(
              onPressed: () => context.goNamed('login'),
              child: const Text("Go to Login page"),
            ),
          ],
        )
      ),
    );
  }
}