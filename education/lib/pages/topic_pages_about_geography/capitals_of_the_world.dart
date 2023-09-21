import 'package:flutter/material.dart';

import '../../model/geography_model.dart';

class CapitalsOfTheWorlds extends StatelessWidget {
  const CapitalsOfTheWorlds({super.key, required this.geographyTopicsModel});
  final List<GeographyTopicsModel> geographyTopicsModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('CapitalsOfTheWorlds'),
      ),
    );
  }
}
