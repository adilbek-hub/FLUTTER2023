import 'package:like_lalafo/features/presentation/enams/assets_constants.dart';

class Products {
  final double? price;
  final double? discountPrice;
  final String? vacation;
  final String? description;
  final String? imageUrl;

  Products(
      {this.price,
      this.discountPrice,
      this.vacation,
      this.description,
      this.imageUrl});
}

List<Products> products = [
  Products(
    price: 10000,
    discountPrice: null,
    vacation: '7 дней',
    description: 'Описание',
    imageUrl: AssetConstants.mers.jpg,
  ),
  Products(
    price: 10000,
    vacation: '7 дней',
    description: '1 комната, Собственник',
    imageUrl: AssetConstants.mers.jpg,
  ),
  Products(
    price: 10000,
    discountPrice: null,
    vacation: '7 дней',
    description: '1 комната, Собственник',
    imageUrl: AssetConstants.mers.jpg,
  ),
  Products(
    price: 10000,
    discountPrice: 8000,
    vacation: '7 дней',
    description: ' 1 комната, Собственник, С мебелью частично',
    imageUrl: AssetConstants.mers.jpg,
  ),
  Products(
    price: 10000,
    discountPrice: 8000,
    vacation: '7 дней',
    description: 'Описание',
    imageUrl: AssetConstants.mers.jpg,
  ),
  Products(
    price: 10000,
    discountPrice: 8000,
    vacation: '7 дней',
    description: 'Описание',
    imageUrl: AssetConstants.mers.jpg,
  ),
  Products(
    price: 10000,
    discountPrice: 8000,
    vacation: '7 дней',
    description: 'Описание',
    imageUrl: AssetConstants.mers.jpg,
  ),
  Products(
    price: 10000,
    discountPrice: 8000,
    vacation: '7 дней',
    description: 'Описание',
    imageUrl: AssetConstants.mers.jpg,
  ),
  Products(
    price: 10000,
    discountPrice: 8000,
    vacation: '7 дней',
    description: 'Описание',
    imageUrl: AssetConstants.mers.jpg,
  ),
  Products(
    price: 10000,
    discountPrice: 8000,
    vacation: '7 дней',
    description: 'Описание',
    imageUrl: AssetConstants.mers.jpg,
  ),
  Products(
    price: 10000,
    discountPrice: 8000,
    vacation: '7 дней',
    description: 'Описание',
    imageUrl: AssetConstants.mers.jpg,
  ),
];
