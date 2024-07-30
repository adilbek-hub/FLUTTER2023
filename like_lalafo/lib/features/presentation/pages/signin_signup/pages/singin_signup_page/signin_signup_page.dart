import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:like_lalafo/features/presentation/apptext/app_text.dart';
import 'package:like_lalafo/features/presentation/pages/signin_signup/pages/singin_signup_page/widget/sign_in_view.dart';
import 'package:like_lalafo/features/presentation/pages/signin_signup/pages/singin_signup_page/widget/sign_up_view.dart';
import 'package:like_lalafo/router/router.dart';
import 'package:like_lalafo/theme/color_constants.dart';

@RoutePage()
class SignInSignUpPage extends StatelessWidget {
  const SignInSignUpPage({super.key});

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
                child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: IconButton(
                      onPressed: () {
                        context.router.push(const SettingRoute());
                      },
                      icon: const Icon(
                        Icons.settings_outlined,
                      ),
                    )),
              ),
            ],
            bottom: TabBar(
              onTap: (index) => AutoRouter.of(context).pop(),
              dividerColor: Colors.transparent,
              indicatorColor: ColorConstants.green,
              indicatorSize: TabBarIndicatorSize.tab,
              labelColor: ColorConstants.green,
              labelStyle: const TextStyle(fontSize: 20),
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
