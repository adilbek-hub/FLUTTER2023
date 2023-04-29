import 'package:education/constants/app_color.dart';
import 'package:education/constants/app_text.dart';
import 'package:education/model/suroo.dart';
import 'package:flutter/material.dart';

class Continent {
  const Continent(
      {required this.name,
      required this.icon,
      required this.color,
      this.suroo});
  final String name;
  final String icon;
  final Color color;
  final List<Suroo>? suroo;
  
}

const asia = Continent(
  name: AppText.asia,
  icon: 'asia',
  color: ContinentsColor.asia,
);
final europe = Continent(
    name: AppText.europe,
    icon: 'europe',
    color: ContinentsColor.europe,
    suroo: europeQuestion);
const northAmerica = Continent(
    name: AppText.northAmerica,
    icon: 'northAmerica',
    color: ContinentsColor.northAmerica);
const southAmerica = Continent(
    name: AppText.southAmerica,
    icon: 'southAmerica',
    color: ContinentsColor.southAmerica);
const africa = Continent(
    name: AppText.africa, icon: 'africa', color: ContinentsColor.africa);
const australia = Continent(
    name: 'Австралия', icon: 'australia', color: ContinentsColor.australia);

List<Continent> continentList = [
  asia,
  europe,
  northAmerica,
  southAmerica,
  africa,
  australia,
];
