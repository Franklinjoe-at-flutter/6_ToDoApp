import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:todo_app/2_application/app/pages/home/home_page.dart';
import 'package:todo_app/2_application/app/pages/settings/settings_page.dart';
import 'package:todo_app/2_application/app/pages/task/tasks_page.dart';
//import 'package:todo_app/2_application/app/pages/home/home_page.dart';
import 'package:todo_app/2_application/core/go_router_observer.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>(
  debugLabel: 'root',
);
final GlobalKey<NavigatorState> _shellNavigatorKey = GlobalKey<NavigatorState>(
  debugLabel: 'shell',
);

final routes = GoRouter(
  observers: [GoRouterObserver()],
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/home/dashboard',
  routes: [
    ShellRoute(
      navigatorKey: _shellNavigatorKey,
      builder: (context, state, child) => child,
      routes: [
        GoRoute(
          path: '/home/:tab',
          builder: (context, state) => HomePage(
            key: state.pageKey,
            tab: state.pathParameters['tab'] ?? 'dashboard',
          ),
        ),
      ],
    ),
    GoRoute(path: '/home/tasks', builder: (context, state) => TasksPage()),

    GoRoute(
      path: '/home/settings',
      builder: (context, state) => const SettingsPage(),
    ),
  ],
);
