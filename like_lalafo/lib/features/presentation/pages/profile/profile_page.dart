import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:like_lalafo/features/presentation/apptext/app_text.dart';
import 'package:like_lalafo/features/presentation/pages/profile/widget/sign_in_view.dart';
import 'package:like_lalafo/features/presentation/pages/profile/widget/sign_up_view.dart';

@RoutePage()
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            pinned: true,
            floating: true,
            snap: true,
            title: const AppText(
              title: 'Начнем!',
              textType: TextType.body,
              color: Colors.black,
            ),
            centerTitle: true,
            actions: [
              GestureDetector(
                onTap: () {},
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Icon(Icons.settings_outlined),
                ),
              ),
            ],
            bottom: TabBar(
              onTap: (index) => AutoRouter.of(context).pop(),
              dividerColor: Colors.transparent,
              indicatorColor: Colors.green,
              indicatorSize: TabBarIndicatorSize.tab,
              labelColor: Colors.green,
              tabs: const [
                Tab(text: 'Войти'),
                Tab(text: 'Регистрация'),
              ],
            ),
          ),
        ],
        body: const TabBarView(
          children: [
            SignInView(),
            SignUpView(),
          ],
        ),
      ),
    );
  }
}
