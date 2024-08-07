import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:like_lalafo/core/theme/color_constants.dart';
import 'package:like_lalafo/core/theme/get_theme_mode_color.dart';
import 'package:like_lalafo/features/presentation/apptext/app_text.dart';

@RoutePage()
class PricePage extends StatefulWidget {
  const PricePage({super.key});

  @override
  State<PricePage> createState() => _PricePageState();
}

class _PricePageState extends State<PricePage> {
  final ValueNotifier<bool> _isRecommendedSelected = ValueNotifier<bool>(true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            leading: IconButton(
              onPressed: () {
                context.router.pop();
              },
              icon: const Icon(
                Icons.chevron_left,
                size: 36,
                color: Colors.grey,
              ),
            ),
            title: const AppText(
              title: 'Цена',
              textType: TextType.body,
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
            actions: const [
              AppText(
                title: 'Далее',
                textType: TextType.body,
                color: Colors.green,
                fontWeight: FontWeight.w600,
              ),
              SizedBox(width: 12),
            ],
            centerTitle: true,
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText(
                    title: 'Цена',
                    textType: TextType.header,
                    color: getThemeModeColor.brighnessTheme(context),
                  ),
                  const TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: ColorConstants.grey,
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: ColorConstants.grey,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    width: MediaQuery.sizeOf(context).width,
                    height: 38,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: ColorConstants.green,
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(18)),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              _isRecommendedSelected.value = true;
                            },
                            child: ValueListenableBuilder<bool>(
                              valueListenable: _isRecommendedSelected,
                              builder: (context, value, child) {
                                return Container(
                                  decoration: BoxDecoration(
                                    color: value ? Colors.green : Colors.white,
                                    borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(18),
                                        bottomLeft: Radius.circular(18)),
                                  ),
                                  alignment: Alignment.center,
                                  child: const AppText(
                                    title: 'KGS',
                                    textType: TextType.subtitle,
                                    fontWeight: FontWeight.bold,
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              _isRecommendedSelected.value = false;
                            },
                            child: ValueListenableBuilder<bool>(
                              valueListenable: _isRecommendedSelected,
                              builder: (context, value, child) {
                                return Container(
                                  height: 34,
                                  decoration: BoxDecoration(
                                    color: !value ? Colors.green : Colors.white,
                                    borderRadius: const BorderRadius.only(
                                        topRight: Radius.circular(18),
                                        bottomRight: Radius.circular(18)),
                                  ),
                                  alignment: Alignment.center,
                                  child: AppText(
                                    title: 'USD',
                                    textType: TextType.subtitle,
                                    fontWeight: FontWeight.bold,
                                    color: getThemeModeColor
                                        .brighnessTheme(context),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _isRecommendedSelected.dispose();
    super.dispose();
  }
}
