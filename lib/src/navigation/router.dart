import 'package:amgad_business_card/src/navigation/route_names.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

GoRouter router = GoRouter(
  initialLocation: '/',
  navigatorKey: GlobalKey<NavigatorState>(),
  routes: RouteNames.routes,
);
