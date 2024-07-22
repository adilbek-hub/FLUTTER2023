enum AssetConstants {
  mers,
  microsoft,
  home,
  advert,
  flat,
}

extension AssetsExtension on AssetConstants {
  String get svg => 'assets/svg/$name.svg';
  String get png => 'assets/png/$name.png';
  String get jpg => 'assets/jpg/$name.jpg';
}
