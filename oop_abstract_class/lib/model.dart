import 'package:flutter/material.dart';

abstract class Transport {
  String getName;
  String getDescription;
  Widget getIcon;
  Transport({
    required this.getName,
    required this.getDescription,
    required this.getIcon,
  });
}
