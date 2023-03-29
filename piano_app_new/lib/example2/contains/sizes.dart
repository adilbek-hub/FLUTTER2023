import 'package:flutter/material.dart';

double h = 500;

double w = 400;

double whiteKeyWidth = 25;

double blackKeyWidth = 10;

double whiteKeyHeight = 40;

double blackKeyHeight = 30;

void initialiseSizes(BuildContext context) {
  h = MediaQuery.of(context).size.height;
  w = MediaQuery.of(context).size.width;

  whiteKeyWidth = w * 0.2;
  blackKeyWidth = w * 0.60;
  whiteKeyHeight = h * 0.8;
  blackKeyHeight = h * 0.65;
}
