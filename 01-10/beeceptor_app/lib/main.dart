import 'package:beeceptor_app/ui/screens/home_page.dart';
import 'package:beeceptor_app/ui/screens/posts_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MainApp());
}

final GoRouter _router = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => HomePage()),
    GoRoute(path: '/posts', builder: (context, state) => PostsPage()),
  ],
);

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      debugShowCheckedModeBanner: false,
    );
  }
}
