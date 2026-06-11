import 'package:go_router/go_router.dart';

/// Metadata wrapper for GoRoute with authentication requirements
class RouteConfig<T extends RouteBase> {
  const RouteConfig({
    required this.route,
    this.isGuarded = false,
  });

  /// The actual GoRoute definition
  final T route;

  /// Whether this route requires authentication
  final bool isGuarded;

  /// Route name from embedded GoRoute
  String get name => (route is GoRoute ? (route as GoRoute).name : '') ?? '';

  /// Route path from embedded GoRoute
  String get path => (route is GoRoute ? (route as GoRoute).path : '');

  @override
  String toString() => 'RouteConfig(name: $name, path: $path, isGuarded: $isGuarded)';
}
