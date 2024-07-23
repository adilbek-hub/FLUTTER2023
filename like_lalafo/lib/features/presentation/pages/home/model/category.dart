import 'package:like_lalafo/features/presentation/enams/assets_constants.dart';

class Subcategory {
  const Subcategory({required this.name, required this.price});
  final String name;
  final double price;
}

class Category {
  const Category(
      {required this.image,
      required this.name,
      required this.price,
      required this.subcategories});
  final String image;
  final String name;
  final double price;
  final List<Subcategory> subcategories;
}

// Определяем подкатегории
final transportSubcategories = [
  const Subcategory(name: 'Легковые автомобили', price: 1000.0),
  const Subcategory(name: 'Грузовые автомобили', price: 2000.0),
];

final servicesSubcategories = [
  const Subcategory(name: 'Ремонт', price: 500.0),
  const Subcategory(name: 'Уборка', price: 300.0),
];

final electronicsSubcategories = [
  const Subcategory(name: 'Компьютеры', price: 1200.0),
  const Subcategory(name: 'Телефоны', price: 800.0),
];

final sportsSubcategories = [
  const Subcategory(name: 'Фитнес', price: 100.0),
  const Subcategory(name: 'Рыбалка', price: 200.0),
];

final businessEquipmentSubcategories = [
  const Subcategory(name: 'Офисное оборудование', price: 1500.0),
  const Subcategory(name: 'Производственное оборудование', price: 2500.0),
];

final issykKulSubcategories = [
  const Subcategory(name: 'Отели', price: 5000.0),
  const Subcategory(name: 'Туры', price: 3000.0),
];

final lalafoBusinessSubcategories = [
  const Subcategory(name: 'Продуктовые магазины', price: 10000.0),
  const Subcategory(name: 'Кафе', price: 8000.0),
];

final realEstateSubcategories = [
  const Subcategory(name: 'Квартиры', price: 20000.0),
  const Subcategory(name: 'Дома', price: 30000.0),
];

final homeAndGardenSubcategories = [
  const Subcategory(name: 'Мебель', price: 2000.0),
  const Subcategory(name: 'Садовая техника', price: 1500.0),
];

final jobSubcategories = [
  const Subcategory(name: 'Вакансии', price: 0.0),
  const Subcategory(name: 'Резюме', price: 0.0),
];

final personalItemsSubcategories = [
  const Subcategory(name: 'Одежда', price: 500.0),
  const Subcategory(name: 'Аксессуары', price: 300.0),
];

final animalsSubcategories = [
  const Subcategory(name: 'Собаки', price: 1000.0),
  const Subcategory(name: 'Кошки', price: 800.0),
];

final kidsWorldSubcategories = [
  const Subcategory(name: 'Игрушки', price: 200.0),
  const Subcategory(name: 'Одежда для детей', price: 400.0),
];

final medicalSuppliesSubcategories = [
  const Subcategory(name: 'Медикаменты', price: 50.0),
  const Subcategory(name: 'Оборудование', price: 1000.0),
];

final freebiesSubcategories = [
  const Subcategory(name: 'Одежда', price: 0.0),
  const Subcategory(name: 'Мебель', price: 0.0),
];

// Создаем объекты категорий
final transportCategory = Category(
  image: AssetConstants.mers.jpg,
  name: 'Транспорт',
  price: 1650.0,
  subcategories: transportSubcategories,
);

final servicesCategory = Category(
  image: AssetConstants.home.png,
  name: 'Услуги',
  price: 1650.0,
  subcategories: servicesSubcategories,
);

final electronicsCategory = Category(
  image: AssetConstants.home.png,
  name: 'Техника и электроника',
  price: 1650.0,
  subcategories: electronicsSubcategories,
);

final sportsCategory = Category(
  image: AssetConstants.home.png,
  name: 'Спорт и хобби',
  price: 1650.0,
  subcategories: sportsSubcategories,
);

final businessEquipmentCategory = Category(
  image: AssetConstants.home.png,
  name: 'Оборудования для бизнеса',
  price: 1650.0,
  subcategories: businessEquipmentSubcategories,
);

final issykKulCategory = Category(
  image: AssetConstants.home.png,
  name: 'Иссык-Куль 2024',
  price: 1650.0,
  subcategories: issykKulSubcategories,
);

final lalafoBusinessCategory = Category(
  image: AssetConstants.home.png,
  name: 'Бизнесы на lalafo',
  price: 1650.0,
  subcategories: lalafoBusinessSubcategories,
);

final realEstateCategory = Category(
  image: AssetConstants.home.png,
  name: 'Недвижимость',
  price: 1650.0,
  subcategories: realEstateSubcategories,
);

final homeAndGardenCategory = Category(
  image: AssetConstants.home.png,
  name: 'Дом и сад',
  price: 1650.0,
  subcategories: homeAndGardenSubcategories,
);

final jobCategory = Category(
  image: AssetConstants.home.png,
  name: 'Работа',
  price: 1650.0,
  subcategories: jobSubcategories,
);

final personalItemsCategory = Category(
  image: AssetConstants.home.png,
  name: 'Личные вещи',
  price: 1650.0,
  subcategories: personalItemsSubcategories,
);

final animalsCategory = Category(
  image: AssetConstants.home.png,
  name: 'Животные',
  price: 1650.0,
  subcategories: animalsSubcategories,
);

final kidsWorldCategory = Category(
  image: AssetConstants.home.png,
  name: 'Детский мир',
  price: 1650.0,
  subcategories: kidsWorldSubcategories,
);

final medicalSuppliesCategory = Category(
  image: AssetConstants.home.png,
  name: 'Медтовары',
  price: 1650.0,
  subcategories: medicalSuppliesSubcategories,
);

final freebiesCategory = Category(
  image: AssetConstants.home.png,
  name: 'Находки, отдам даром',
  price: 1650.0,
  subcategories: freebiesSubcategories,
);

// Создаем список категорий
List<Category> categories = [
  transportCategory,
  servicesCategory,
  electronicsCategory,
  sportsCategory,
  businessEquipmentCategory,
  issykKulCategory,
  lalafoBusinessCategory,
  realEstateCategory,
  homeAndGardenCategory,
  jobCategory,
  personalItemsCategory,
  animalsCategory,
  kidsWorldCategory,
  medicalSuppliesCategory,
  freebiesCategory,
];
