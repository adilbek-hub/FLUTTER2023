import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({
    super.key,
  });

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    final items = [
      "Help Moving",
      "Furniture Assembly",
      "Mounting",
      "Home Repairs",
      "Personal Assistant",
      "Delivery",
      "Hard Work",
      "Practice & Unpacking",
      "Painting",
      "Cleaning",
      "Heavy Lifting"
    ];

    final firstRowItems = items.sublist((items.length / 2).ceil());
    final secondRowItems = items.sublist(0, (items.length / 2).ceil());

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: SizedBox(
          height: 200,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: firstRowItems
                    .map(
                      (f) => GestureDetector(
                        child: Container(
                          margin: const EdgeInsets.all(5.0),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 10.0),
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: const Color(0xFF282f61), width: 2.0),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                          ),
                          child: Text(
                            f,
                            style: const TextStyle(
                              color: Color(0xFF17b01b),
                              fontSize: 16.0,
                            ),
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
              const SizedBox(height: 10.0),
              Row(
                children: secondRowItems
                    .map(
                      (f) => GestureDetector(
                        child: Container(
                          margin: const EdgeInsets.all(5.0),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 10.0),
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: const Color(0xFF282f61), width: 2.0),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                          ),
                          child: Text(
                            f,
                            style: const TextStyle(
                              color: Color(0xFF17b01b),
                              fontSize: 16.0,
                            ),
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
