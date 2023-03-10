import 'package:flutter/material.dart';
import 'package:news_app/components/custom_card.dart';
import 'package:news_app/home/view/for_administrator_login_page.dart';
import 'package:news_app/theme/app_colors.dart';
import 'package:news_app/theme/app_text.dart';
import 'package:news_app/theme/app_text_style.dart';

class KaktusMedia extends StatefulWidget {
  const KaktusMedia({super.key, this.onPressed});

  final void Function()? onPressed;
  @override
  State<KaktusMedia> createState() => _KaktusMediaState();
}

class _KaktusMediaState extends State<KaktusMedia> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.appBarColors,
        centerTitle: true,
        title: const Text(AppText.appBarText,
            style: AppTextStyle.appBarTextStyles),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.menu, size: 24, color: AppColors.iconColor),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon:
                const Icon(Icons.search, size: 24, color: AppColors.iconColor),
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 15),
        margin: const EdgeInsets.all(10),
        color: AppColors.mediaBacgroundColor,
        width: 500,
        height: 400,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const FlutterLogo(size: 50),
                const SizedBox(width: 10),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(AppText.media, style: AppTextStyle.mediaTextStyle),
                    Text(
                      AppText.versio,
                      style: AppTextStyle.versioTextStyle,
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(height: 40),
            CustomCard(
              icon: Icons.star,
              text: AppText.balooText,
              onTap: () {},
            ),
            const SizedBox(height: 14),
            CustomCard(
              icon: Icons.share,
              text: AppText.bolyshu,
              onTap: () {},
            ),
            const SizedBox(height: 14),
            CustomCard(
              icon: Icons.chat_sharp,
              text: AppText.synysh,
              onTap: () {},
            ),
            const SizedBox(height: 14),
            CustomCard(
              icon: Icons.call,
              text: AppText.bailanush,
              onTap: () {},
            ),
            const SizedBox(height: 14),
            CustomCard(
              icon: Icons.admin_panel_settings_outlined,
              text: AppText.administrator,
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) =>
                            const AdministratorLoginPage())));
              },
            ),
          ],
        ),
      ),
    );
  }
}
