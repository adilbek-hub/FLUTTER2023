import 'package:geolocator/geolocator.dart';

import 'package:flutter/material.dart';

class GeolocatorExample extends StatefulWidget {
  const GeolocatorExample({super.key});

  @override
  State<GeolocatorExample> createState() => _GeolocatorExampleState();
}

class _GeolocatorExampleState extends State<GeolocatorExample> {
  Future<void> weatherLocator() async {
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.whileInUse) {}
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GeolocatorExample'),
      ),
      body: Column(
        children: [
          MaterialButton(
            color: Colors.yellow,
            onPressed: () {
              weatherLocator();
            },
            child: const Text('Geolocator'),
          ),
        ],
      ),
    );
  }
}
