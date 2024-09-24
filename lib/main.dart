import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sample/routing/main_route.dart';
import 'package:sample/routing/some_route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: GoRouter(routes: $appRoutes, redirect: (context, state) {

        if (!state.fullPath!.startsWith("/some")) {
          return const SomeRoute(0).location;
        }

        return null;
      },),
    );
  }
}
