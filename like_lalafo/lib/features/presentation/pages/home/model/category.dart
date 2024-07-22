import 'package:like_lalafo/features/presentation/enams/assets_constants.dart';

class Category {
  const Category(
      {required this.image, required this.name, required this.price});
  final String image;
  final String name;
  final double price;
}

List<Category> categories = [
  Category(
    image: AssetConstants.mers.jpg,
    name: 'Транспорт',
    price: 1650.0,
  ),
  Category(
    image: AssetConstants.home.png,
    name: 'Услуги',
    price: 1650.0,
  ),
  Category(
    image: AssetConstants.home.png,
    name: 'Техника и електроника',
    price: 1650.0,
  ),
  Category(
    image: AssetConstants.home.png,
    name: 'Спорт и хобби',
    price: 1650.0,
  ),
  Category(
    image: AssetConstants.home.png,
    name: 'Оборудования для бизнеса',
    price: 1650.0,
  ),
  Category(
    image: AssetConstants.home.png,
    name: 'Иссык-Куль 2024',
    price: 1650.0,
  ),
  Category(
    image: AssetConstants.home.png,
    name: 'Бизнесы на lalafo',
    price: 1650.0,
  ),
  Category(
    image: AssetConstants.home.png,
    name: 'Недвижимость',
    price: 1650.0,
  ),
  Category(
    image: AssetConstants.home.png,
    name: 'Дом и сад',
    price: 1650.0,
  ),
  Category(
    image: AssetConstants.home.png,
    name: 'Работа',
    price: 1650.0,
  ),
  Category(
    image: AssetConstants.home.png,
    name: 'Личные вещи',
    price: 1650.0,
  ),
  Category(
    image: AssetConstants.home.png,
    name: 'Животные',
    price: 1650.0,
  ),
  Category(
    image: AssetConstants.home.png,
    name: 'Детский мир',
    price: 1650.0,
  ),
  Category(
    image: AssetConstants.home.png,
    name: 'Медтовары',
    price: 1650.0,
  ),
  Category(
    image: AssetConstants.home.png,
    name: 'Находки, отдам даром',
    price: 1650.0,
  ),
];
