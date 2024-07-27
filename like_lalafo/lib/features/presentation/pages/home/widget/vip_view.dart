import 'package:flutter/material.dart';
import 'package:like_lalafo/features/presentation/apptext/app_text.dart';
import 'package:like_lalafo/theme/color_constants.dart';

class VipView extends StatelessWidget {
  const VipView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 2),
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 241, 51, 51),
              borderRadius: BorderRadius.circular(5)),
          child: Row(
            children: [
              Image.network(
                'https://png.klev.club/uploads/posts/2024-04/png-klev-club-z2a4-p-korona-narisovannaya-png-15.png',
                width: 18,
                color: ColorConstants.yellow,
              ),
              const SizedBox(width: 3),
              const AppText(title: 'VIP', textType: TextType.promocode),
            ],
          ),
        ),
        const SizedBox(width: 8),
        Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(
              color: ColorConstants.grey.withOpacity(0.8),
              shape: BoxShape.circle),
          child: Image.network(
            'https://png.klev.club/uploads/posts/2024-03/png-klev-club-p-gromkogovoritel-png-18.png',
          ),
        ),
      ],
    );
  }
}
