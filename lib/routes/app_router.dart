import 'package:video_app_admin/index.dart';

class AppRouter {
  final bool hasError;
  final bool isAuth;
  const AppRouter({required this.hasError, required this.isAuth});

  GoRouter getRoutes() {
    return GoRouter(
      initialLocation: hasError ? '/error' : isAuth ? '/home' : '/login',
      routes: <RouteBase>[
        GoRoute(
          name: 'error',
          path: '/error',
          builder: (BuildContext context, GoRouterState state) {
            return const ErrorPage();
          },
        ),
        GoRoute(
          name: 'login',
          path: '/login',
          redirect: (BuildContext context, GoRouterState state) {
            if (isAuth) {
              return '/home';
            } else {
              return null;
            }
          },
          builder: (BuildContext context, GoRouterState state) {
            return const LoginPage();
          },
        ),
        GoRoute(
          name: 'home',
          path: '/home',
          redirect: (BuildContext context, GoRouterState state) {
            if (!isAuth) {
              return '/login';
            } else {
              return null;
            }
          },
          builder: (BuildContext context, GoRouterState state) {
            return const HomePage();
          },
          routes: <RouteBase>[
            GoRoute(
              name: 'add_participant',
              path: 'add_participant',
              builder: (BuildContext context, GoRouterState state) {
                return const AddParticipant();
              },
            ),
            GoRoute(
              name: 'edit_participant',
              path: 'edit_participant',
              builder: (BuildContext context, GoRouterState state) {
                return const EditParticipant();
              },
            ),
            GoRoute(
              name: 'add_video_post',
              path: 'add_video_post',
              builder: (BuildContext context, GoRouterState state) {
                return const AddVideoPost();
              },
            ),
            GoRoute(
              name: 'edit_video_post',
              path: 'edit_video_post',
              builder: (BuildContext context, GoRouterState state) {
                return const EditVideoPost();
              },
            ),
            GoRoute(
              name: 'add_text_post',
              path: 'add_text_post',
              builder: (BuildContext context, GoRouterState state) {
                return const AddTextPost();
              },
            ),
            GoRoute(
              name: 'edit_text_post',
              path: 'edit_text_post',
              builder: (BuildContext context, GoRouterState state) {
                return const EditTextPost();
              },
            ),
            GoRoute(
              name: 'add_image_post',
              path: 'add_image_post',
              builder: (BuildContext context, GoRouterState state) {
                return const AddImagePost();
              },
            ),
            GoRoute(
              name: 'edit_image_post',
              path: 'edit_image_post',
              builder: (BuildContext context, GoRouterState state) {
                return const EditImagePost();
              },
            ),
          ],
        ),
      ],
    );
  }
}