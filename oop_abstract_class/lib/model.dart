import 'package:flutter/material.dart';

abstract class Transport {
  String getName();
  String getDescription();
  Widget getIcon();
}

class Car extends Transport {
  @override
  String getDescription() => 'Автомобиль';

  @override
  Widget getIcon() => const Icon(Icons.directions_car);

  @override
  String getName() => 'Это автомобилью Он ездить на дорогах';
}

class Bycicle extends Transport {
  @override
  String getDescription() {
    // TODO: implement getDescription
    throw UnimplementedError();
  }

  @override
  Widget getIcon() {
    // TODO: implement getIcon
    throw UnimplementedError();
  }

  @override
  String getName() {
    // TODO: implement getName
    throw UnimplementedError();
  }
}
