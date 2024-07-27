import 'package:flutter/material.dart';

class FeaturedNewChooseButton extends StatefulWidget {
  final ValueChanged<bool> onSelectionChanged;

  const FeaturedNewChooseButton({super.key, required this.onSelectionChanged});

  @override
  State<FeaturedNewChooseButton> createState() =>
      _FeaturedNewChooseButtonState();
}

class _FeaturedNewChooseButtonState extends State<FeaturedNewChooseButton> {
  bool _isRecommendedSelected = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 38,
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.2),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(width: 3),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _isRecommendedSelected = true;
                      });
                      widget.onSelectionChanged(true);
                    },
                    child: Container(
                      height: 34,
                      decoration: BoxDecoration(
                        color: _isRecommendedSelected
                            ? Colors.white
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      alignment: Alignment.center,
                      child: const Text(
                        'Рекомендованные',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _isRecommendedSelected = false;
                      });
                      widget.onSelectionChanged(false);
                    },
                    child: Container(
                      height: 34,
                      decoration: BoxDecoration(
                        color: !_isRecommendedSelected
                            ? Colors.white
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      alignment: Alignment.center,
                      child: const Text(
                        'Новые',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 3),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
