enum AssetConstants {
  mers,
  microsoft,
  home,
  advert,
  flat,
  warning,
  camera1,
  car,
  car1,
  car2,
  car3,
  car4,
  cat1,
  cat2,
  comp1,
  comp2,
  comp3,
  cow1,
  cow2,
  cow3,
  crocodile,
  dog1,
  dog2,
  eshic,
  phone,
  phone1,
  phone2,
  spider1,
  spider2,
  crown,
  person,
  gromko,
  facebook,
  google,
  vk,
  ok,
  lalafoLogo,
  lalafoTextLogo,
  caravif,
  brush,
  ball,
  vilochnyPogruzchic,
  picnic,
  businessCart,
  flawerVasa,
  portfel,
  dress,
  catcategory,
  toy,
  medportfel,
  podarok,
  konder,
  konder2,
  laptopInRoom,
  tables,
  carr,
  dressInRoom,
  whiteHome,
  cat,
  camera,
  iphonee,
  banner,
}

extension AssetsExtension on AssetConstants {
  String get svg => 'assets/svg/$name.svg';
  String get png => 'assets/png/$name.png';
  String get jpg => 'assets/jpg/$name.jpg';
  String get webp => 'assets/webp/$name.webp';
  String get avif => 'assets/gif/$name.avif';
}
