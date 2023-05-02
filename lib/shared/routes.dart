import 'package:bookly/Features/home/presentation/views/detail_view_screen.dart';
import 'package:bookly/Features/home/presentation/views/home_view_screen.dart';
import 'package:bookly/Features/search/presentation/views/search_view_screen.dart';
import 'package:go_router/go_router.dart';

import '../Features/splash/presentation/views/splash_view_screen.dart';

abstract class AppRoutes{
  static final route = GoRouter(
      routes: [
        GoRoute(
        path: "/",
        builder: (context, state) =>const SplashViewScreen(),
        ),
        GoRoute(
          path: "/home",
          builder: (context, state) =>const HomeViewScreen(),
        ),
        GoRoute(
          path: "/details",
          builder: (context, state) =>const DetailViewScreen(),
        ),
        GoRoute(
          path: "/search",
          builder: (context, state) =>const SearchViewScreen(),
        ),
      ]
  );


}