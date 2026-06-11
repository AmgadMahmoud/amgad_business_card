import 'package:amgad_business_card/src/routes/home_route.dart';
import 'package:amgad_business_card/src/navigation/route_config.dart';
import 'package:amgad_business_card/src/navigation/transition_animation/fade_transition.dart';
import 'package:go_router/go_router.dart';
import 'package:collection/collection.dart';

class RouteNames {
  RouteNames._();

  static final RouteConfig<GoRoute> home = RouteConfig<GoRoute>(
    route: GoRoute(
      path: '/',
      name: '/',
      pageBuilder: (context, state) =>
          FadePageTransition(key: state.pageKey, child: const HomeRoute()),
    ),
  );

  // Registry of all top-level route configs
  static final List<RouteConfig> all = <RouteConfig>[home];

  /// Get list of GoRoutes for GoRouter configuration (top-level only)

  static List<RouteBase> get routes => all.map((RouteConfig config) => config.route).toList();

  static List<String> get routeNames => all.map((RouteConfig config) => config.name).toList();

  /// Get list of guarded route configs
  static List<RouteConfig> get guardedRoutes =>
      all.where((RouteConfig config) => config.isGuarded).toList();

  /// Find route config by name
  static RouteConfig? findByName(String? name) {
    try {
      return all.firstWhereOrNull((RouteConfig config) => config.name == name);
    } catch (_) {
      return null;
    }
  }
}
