
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SomeRoute extends GoRouteData {

  final int? id;

  const SomeRoute(this.id);

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return Scaffold(
      appBar: AppBar(),
      body: Text("You entered ID: $id"),
    );
  }

}