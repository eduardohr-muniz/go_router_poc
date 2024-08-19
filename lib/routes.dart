import 'package:go_router/go_router.dart';
import 'package:go_router_poc/pages/home_page.dart';
import 'package:go_router_poc/pages/user_name_page.dart';
import 'package:go_router_poc/pages/user_page.dart';

final router = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => const HomePage(),
  ),
  GoRoute(path: '/user', name: 'user', builder: (context, state) => const UserPage(), routes: [
    GoRoute(
        path: 'user_name/:name',
        name: 'user_name',
        builder: (context, state) => UserNamePage(
              name: state.pathParameters['name'],
            )),
  ]),
]);
