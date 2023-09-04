import 'package:http/http.dart' as http;

import '../model/hotel_model.dart';

class HotelService {
  const HotelService({required this.client});
  final http.Client client;
  Future<HotelModel?> getData() async {
    try {
      final response = await http.get(
        Uri.parse('https://adilbek-hub.github.io/my_data/my.json'),
      );

      if (response.statusCode == 200) {
        final data = hotelFromJson(response.body);
        return data;
      } else {
        throw Exception('Failed to load computer data');
      }
    } catch (e) {
      print('Кештен ката: ${e.toString()}');
    }
    return null;
  }
}

final hotelService = HotelService(
  client: http.Client(),
);
