import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:godwin_ebri_portfolio/Application/pages/nav_page.dart';
import 'package:godwin_ebri_portfolio/core/routing/go_router_observer.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');

const String _basePath = '/nav';

final routes = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: '$_basePath/${NavPage.pageConfig.name}',
  observers: [GoRouterObserver()],
  routes: [
    GoRoute(
      name: 'navpage',
      path: '$_basePath/${NavPage.pageConfig.name}',
      builder: (context, state) {
        return NavPage();
      },
    ),
  ],
);
