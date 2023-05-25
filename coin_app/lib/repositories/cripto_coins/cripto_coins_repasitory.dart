import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class CriptoCoinRepositories {
  Future<void> getCoinsList() async {
    final response = await Dio().get(
        'https://min-api.cryptocompare.com/data/price?fsym=BTC&tsyms=USD,JPY,EUR');
    debugPrint(response.toString());
  }
}
