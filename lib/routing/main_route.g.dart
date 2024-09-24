// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_route.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $mainRoute,
    ];

RouteBase get $mainRoute => ShellRouteData.$route(
      factory: $MainRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: '/some',
          factory: $SomeRouteExtension._fromState,
        ),
      ],
    );

extension $MainRouteExtension on MainRoute {
  static MainRoute _fromState(GoRouterState state) => const MainRoute();
}

extension $SomeRouteExtension on SomeRoute {
  static SomeRoute _fromState(GoRouterState state) => SomeRoute(
        _$convertMapValue('id', state.uri.queryParameters, int.parse),
      );

  String get location => GoRouteData.$location(
        '/some',
        queryParams: {
          if (id != null) 'id': id!.toString(),
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

T? _$convertMapValue<T>(
  String key,
  Map<String, String> map,
  T Function(String) converter,
) {
  final value = map[key];
  return value == null ? null : converter(value);
}
