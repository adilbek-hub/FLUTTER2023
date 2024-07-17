import 'package:auto_route/auto_route.dart';
import 'package:like_lalafo/features/presentation/pages/chat/chats_page.dart';
import 'package:like_lalafo/features/presentation/pages/favorite/favorites_page.dart';
import 'package:like_lalafo/features/presentation/pages/home/home_page.dart';
import 'package:like_lalafo/features/presentation/pages/on_boarding/on_boarding_page.dart';
import 'package:like_lalafo/features/presentation/pages/profile/profile_page.dart';

part "router.gr.dart";

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: OnBoardingRoute.page, initial: true, children: [
          AutoRoute(page: HomeRoute.page, initial: true),
          AutoRoute(page: FavoriteRoute.page, path: 'favorite'),
          AutoRoute(page: ChatsRoute.page, path: 'chats'),
          AutoRoute(page: ProfileRoute.page, path: 'profile'),
        ]),
      ];
}
