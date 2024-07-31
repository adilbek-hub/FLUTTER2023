import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:like_lalafo/features/presentation/pages/signin_signup/pages/setting_page/widget/setting_text.dart';
import 'package:like_lalafo/router/router.dart';

class SettingCard extends StatelessWidget {
  const SettingCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Theme.of(context).brightness == Brightness.dark
            ? Colors.grey[850]
            : Colors.white,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 16, bottom: 10),
        child: Column(
          children: [
            SettingText(
                onTap: () {
                  AutoRouter.of(context).push(
                    const ThemeModeRoute(),
                  );
                },
                text: 'Темная тема'),
            SettingText(onTap: () {}, text: 'Пригласить друзей'),
            SettingText(onTap: () {}, text: 'Страна'),
            SettingText(onTap: () {}, text: 'Язык'),
            SettingText(onTap: () {}, text: 'Изменить пароль'),
            SettingText(onTap: () {}, text: 'Управление уведомлениями'),
            SettingText(onTap: () {}, text: 'Помощь'),
            SettingText(onTap: () {}, text: 'Правовая информация'),
            SettingText(onTap: () {}, text: 'Правило lalafo'),
            SettingText(onTap: () {}, text: 'О компании'),
            SettingText(onTap: () {}, text: 'Контакты'),
            SettingText(onTap: () {}, text: 'Реклама'),
          ],
        ),
      ),
    );
  }
}
