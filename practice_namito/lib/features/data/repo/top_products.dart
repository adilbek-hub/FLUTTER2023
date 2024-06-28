import 'package:http/http.dart' as http;
import 'package:practice_namito/features/data/model/top_products.dart';

class TopProductRepo {
  Future<List<TopProduct>> fetchTopProducts() async {
    final response = await http
        .get(Uri.parse('https://namito.tatadev.pro/api/top-products/'));

    if (response.statusCode == 200) {
      return topProductFromJson(response.body);
    } else {
      throw Exception('Failed to load top products');
    }
  }
}
