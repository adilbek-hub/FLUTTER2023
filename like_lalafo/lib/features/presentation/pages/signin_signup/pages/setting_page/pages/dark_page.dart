import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:like_lalafo/features/presentation/apptext/app_text.dart';
import 'package:like_lalafo/features/presentation/basic_widgets/def_elevated_button.dart';
import 'package:like_lalafo/features/presentation/pages/signin_signup/pages/setting_page/widget/custom_radio_list_tle.dart';
import 'package:like_lalafo/theme/color_constants.dart';

@RoutePage()
class DarkPage extends StatefulWidget {
  const DarkPage({super.key});

  @override
  State<DarkPage> createState() => _DarkPageState();
}

class _DarkPageState extends State<DarkPage> {
  int _selectedValue = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 227, 227, 227),
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const AppText(
          title: 'Темная тема',
          textType: TextType.body,
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Column(
                  children: [
                    CustomRadioListTile(
                      value: 1,
                      groupValue: _selectedValue,
                      title: 'Вкл.',
                      onChanged: (value) {
                        setState(() {
                          _selectedValue = value!;
                        });
                      },
                    ),
                    const Divider(color: Colors.grey, thickness: 0.5),
                    CustomRadioListTile(
                      value: 2,
                      groupValue: _selectedValue,
                      title: 'Выкл.',
                      onChanged: (value) {
                        setState(() {
                          _selectedValue = value!;
                        });
                      },
                    ),
                    const Divider(color: Colors.grey, thickness: 0.5),
                    CustomRadioListTile(
                      value: 3,
                      groupValue: _selectedValue,
                      title: 'System default',
                      onChanged: (value) {
                        setState(() {
                          _selectedValue = value!;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 15),
          Expanded(
            flex: 3,
            child: Container(
              color: ColorConstants.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    const SizedBox(height: 25),
                    const AppText(
                      title: 'Пожалуйста, оставьте отзыв',
                      textType: TextType.header,
                      color: Colors.black,
                    ),
                    const SizedBox(height: 10),
                    const AppText(
                        title:
                            'Нам очен важна обратная связь! Поделитесь своими впечатлениями о темной теме на lalafo.',
                        textType: TextType.body,
                        color: Colors.black),
                    const SizedBox(height: 25),
                    DefElevatedButton(
                      backgroundColor: ColorConstants.green,
                      height: 45,
                      title: 'Оставить отзыв',
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
