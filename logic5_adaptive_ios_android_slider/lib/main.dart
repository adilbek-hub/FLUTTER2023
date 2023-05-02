import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
      home: const AdaptiveSliderAndSwitch(),
    );
  }
}

class AdaptiveSliderAndSwitch extends StatefulWidget {
  const AdaptiveSliderAndSwitch({super.key});

  @override
  State<AdaptiveSliderAndSwitch> createState() =>
      _AdaptiveSliderAndSwitchState();
}

class _AdaptiveSliderAndSwitchState extends State<AdaptiveSliderAndSwitch> {
  double slider = 0;
  bool isTrue = false;
  bool isTrue2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('AdaptiveSliderSwitch')),
      ),
      body: Column(
        children: [
          Text('${slider.toInt()}'),
          Slider.adaptive(
            min: 0,
            max: 220,
            value: slider,
            onChanged: (value) {
              setState(() {
                slider = value;
                print("VALUE: $value");
                print("SLIDER: $slider");
              });
            },
          ),
          SwitchListTile.adaptive(
            title: const Text('SwitchListTile'),
            value: isTrue,
            onChanged: (bool newValue) {
              setState(() {
                isTrue = newValue;
              });
            },
          ),
          Switch.adaptive(
            value: isTrue2,
            onChanged: (bool newValue) {
              setState(() {
                isTrue2 = newValue;
              });
            },
          ),
          const SizedBox(height: 20),
          Icon(Icons.adaptive.share),
        ],
      ),
    );
  }
}
