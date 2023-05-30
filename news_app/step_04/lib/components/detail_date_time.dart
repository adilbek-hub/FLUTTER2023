import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:step_04/theme/colors.dart';

class DetailDateTime extends StatelessWidget {
  const DetailDateTime({
    super.key,
    required this.article,
  });
  final String article;

  @override
  Widget build(BuildContext context) {
    final dateValue =
        DateFormat('d MMM, y. H:m').format(DateTime.parse(article));
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.access_time,
          size: 30,
          color: AppColor.grey,
        ),
        const SizedBox(
          width: 15,
        ),
        Text(dateValue),
      ],
    );
  }
}
