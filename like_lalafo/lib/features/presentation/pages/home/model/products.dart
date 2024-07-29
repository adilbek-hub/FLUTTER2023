import 'package:like_lalafo/features/presentation/enams/assets_constants.dart';

class ProductModel {
  final double? price;
  final double? discountPrice;
  final String? vacation;
  final String? description;
  final String? imageUrl;

  ProductModel(
      {this.price,
      this.discountPrice,
      this.vacation,
      this.description,
      this.imageUrl});
}

List<ProductModel> products = [
  ProductModel(
      price: 50000,
      discountPrice: null,
      vacation: '6 дней',
      description: 'Описание',
      imageUrl: AssetConstants.camera1.png),
  ProductModel(
      price: 50000,
      vacation: '6 дней',
      description: '1 комната, Собственник',
      imageUrl: AssetConstants.car.png),
  ProductModel(
      price: 50000,
      discountPrice: null,
      vacation: '6 дней',
      description: '1 комната, Собственник',
      imageUrl: AssetConstants.car1.png),
  ProductModel(
    price: 50000,
    discountPrice: 5000,
    vacation: '7 дней',
    description: ' 1 комната, Собственник, С мебелью частично',
    imageUrl: AssetConstants.car2.png,
  ),
  ProductModel(
    price: 10000,
    discountPrice: 8000,
    vacation: '7 дней',
    description: 'Описание',
    imageUrl: AssetConstants.car3.png,
  ),
  ProductModel(
    price: 10000,
    discountPrice: 8000,
    vacation: '7 дней',
    description: 'Описание',
    imageUrl: AssetConstants.car4.png,
  ),
  ProductModel(
    price: 10000,
    discountPrice: 8000,
    vacation: '7 дней',
    description: 'Описание',
    imageUrl: AssetConstants.cat1.png,
  ),
  ProductModel(
    price: 10000,
    discountPrice: 8000,
    vacation: '7 дней',
    description: 'Описание',
    imageUrl: AssetConstants.cat2.png,
  ),
  ProductModel(
    price: 10000,
    discountPrice: 8000,
    vacation: '7 дней',
    description: 'Описание',
    imageUrl: AssetConstants.comp1.png,
  ),
  ProductModel(
    price: 10000,
    discountPrice: 8000,
    vacation: '7 дней',
    description: 'Описание',
    imageUrl: AssetConstants.comp2.png,
  ),
  ProductModel(
    price: 10000,
    discountPrice: 8000,
    vacation: '7 дней',
    description: 'Описание',
    imageUrl: AssetConstants.comp3.png,
  ),
];

List<ProductModel> recomendedProducts = [
  ProductModel(
    price: 10000,
    discountPrice: null,
    vacation: '7 дней',
    description: 'Описание',
    imageUrl: AssetConstants.cow1.png,
  ),
  ProductModel(
    price: 10000,
    vacation: '7 дней',
    description: '1 комната, Собственник',
    imageUrl: AssetConstants.cow2.png,
  ),
  ProductModel(
    price: 10000,
    discountPrice: null,
    vacation: '7 дней',
    description: '1 комната, Собственник',
    imageUrl: AssetConstants.cow3.png,
  ),
  ProductModel(
    price: 10000,
    discountPrice: 8000,
    vacation: '7 дней',
    description: ' 1 комната, Собственник, С мебелью частично',
    imageUrl: AssetConstants.crocodile.png,
  ),
  ProductModel(
    price: 10000,
    discountPrice: 8000,
    vacation: '7 дней',
    description: 'Описание',
    imageUrl: AssetConstants.dog1.png,
  ),
  ProductModel(
    price: 10000,
    discountPrice: 8000,
    vacation: '7 дней',
    description: 'Описание',
    imageUrl: AssetConstants.dog2.png,
  ),
  ProductModel(
    price: 10000,
    discountPrice: 8000,
    vacation: '7 дней',
    description: 'Описание',
    imageUrl: AssetConstants.eshic.png,
  ),
  ProductModel(
      price: 10000,
      discountPrice: 8000,
      vacation: '7 дней',
      description: 'Описание',
      imageUrl: AssetConstants.flat.png),
  ProductModel(
    price: 10000,
    discountPrice: 8000,
    vacation: '7 дней',
    description: 'Описание',
    imageUrl: AssetConstants.home.png,
  ),
  ProductModel(
    price: 10000,
    discountPrice: 8000,
    vacation: '7 дней',
    description: 'Описание',
    imageUrl: AssetConstants.camera1.png,
  ),
  ProductModel(
    price: 10000,
    discountPrice: 8000,
    vacation: '7 дней',
    description: 'Описание',
    imageUrl: AssetConstants.car1.png,
  ),
];
