import 'package:go_router/go_router.dart';
import 'package:serverpod_playground_flutter/modules/authentication/view/authentication_view.dart';
import 'package:serverpod_playground_flutter/modules/home/view/home_view.dart';

class AppRouter {
  static final router = GoRouter(
    initialLocation: '/authentication',
    routes: [
      GoRoute(
        path: '/home',
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: '/authentication',
        builder: (context, state) => AuthenticationView(),
      ),
    ],
  );
}
