import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
//import 'package:todo_app/2_application/app/pages/home/home_page.dart';
import 'package:todo_app/2_application/core/go_router_observer.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>(
  debugLabel: 'root',
);
/*final GlobalKey<NavigatorState> _shellNavigatorKey = GlobalKey<NavigatorState>(
  debugLabel: 'shell',
);*/

final routes = GoRouter(
  observers: [GoRouterObserver()],
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/home/task',
  routes: [
    /*ShellRoute(
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
    ),*/
    GoRoute(
      path: '/home/task',
      builder: (context, state) => Container(
        color: Colors.green,
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                context.push('/home/settings');
              },
              child: Text('Go to Settings'),
            ),
            SizedBox(height: 10),

            ElevatedButton(
              onPressed: () {
                if (context.canPop()) {
                  context.pop();
                } else {
                  context.push('/home/task');
                }
              },
              child: Text('Go Back'),
            ),
          ],
        ),
      ),
    ),

    GoRoute(
      path: '/home/settings',
      builder: (context, state) => Container(
        color: Colors.tealAccent,
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                context.push('/home/task');
              },
              child: Text('Go to task'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                if (context.canPop()) {
                  context.pop();
                } else {
                  context.push('/home/task');
                }
              },
              child: Text('Go Back'),
            ),
          ],
        ),
      ),
    ),
  ],
);
