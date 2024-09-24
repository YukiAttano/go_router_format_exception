


import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:sample/routing/some_route.dart';

part "main_route.g.dart";

@TypedShellRoute<MainRoute>(
  routes: <TypedRoute<RouteData>>[
    TypedGoRoute<SomeRoute>(path: "/some"),
  ],
)
class MainRoute extends ShellRouteData {
  const MainRoute();

  @override
  Widget builder(BuildContext context, GoRouterState state, Widget navigator) {
    return navigator;
  }
}
