import 'package:auto_route/auto_route.dart';
import 'package:like_lalafo/features/presentation/pages/chat/chats_page.dart';
import 'package:like_lalafo/features/presentation/pages/favorite/pages/favorites_page.dart';
import 'package:like_lalafo/features/presentation/pages/home/from_home_router.dart';
import 'package:like_lalafo/features/presentation/pages/home/pages/category/category_page.dart';
import 'package:like_lalafo/features/presentation/pages/home/pages/home_page.dart';
import 'package:like_lalafo/features/presentation/pages/on_boarding/on_boarding_page.dart';
import 'package:like_lalafo/features/presentation/pages/profile/profile_page.dart';

part "router.gr.dart";

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        // AutoRoute(page: CategoryRoute.page, initial: true),
        AutoRoute(page: OnBoardingRoute.page, initial: true, children: [
          AutoRoute(page: FromHomeRouterRoute.page, initial: false, children: [
            AutoRoute(page: HomeRoute.page, initial: true),
            AutoRoute(page: CategoryRoute.page),
          ]),
          AutoRoute(page: FavoriteRoute.page, path: 'favorite', initial: false),
          AutoRoute(page: ChatsRoute.page, path: 'chats', initial: false),
          AutoRoute(page: ProfileRoute.page, path: 'profile', initial: true),
        ]),
      ];
}
