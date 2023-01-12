import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'pages/errorpage.dart';
import 'pages/homepage.dart';
import 'pages/loginpage.dart';
import 'pages/settingspage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _namedrouter,
      title: "GoRouter",

    );
  }
}

final GoRouter _router = GoRouter(
  routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => HomePage(),
      routes: [
        GoRoute(
          path: "settings/:name",
          builder: (context, state) => SettingsPage(
            name: state.params["name"]!,
          ),
        )
      ],
    ),
    GoRoute(
      path: "/login",
      builder: (context, state) => LoginPage(),
    )
  ],
);

final GoRouter _namedrouter = GoRouter(
  errorBuilder: (context, state) => const ErrorScreen(),
  routes: [
    GoRoute(
      name: "home",
      path: "/",
      builder: (context, state) => HomePage(),
      routes: [
        GoRoute(
          name: "settings",
          path: "settings/:name",
          builder: (context, state) {
            state.queryParams.forEach(
              (key, value) {
                print("$key:$value");
              },
            );
            return SettingsPage(
              name: state.params["name"]!,
            );
          }
        )
      ],
    ),
    GoRoute(
      name: "login",
      path: "/login",
      builder: (context, state) => LoginPage(),
    )
  ],
);

