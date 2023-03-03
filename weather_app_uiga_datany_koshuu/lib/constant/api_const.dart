class ApiConst {
  static const String address =
      "https://api.openweathermap.org/data/2.5/weather?q=bishkek,&appid=41aa18abb8974c0ea27098038f6feb1b";
  // Сайтты чакыруу максатында getIcon функциясы түзүлдү жана
  // String iconCode иконканы алуу үчүн, int size иконканын размерин алуу үчүн.
  static String getIcon(String iconData, int iconSize) {
    // чакырылган сайттын ичиндеги wn аба ырайынын иконкасын жана @${iconSize}x аба ырайы иконканын размерин 4х кылуу үчүн жазылды.
    return "http://openweathermap.org/img/wn/$iconData@${iconSize}x.png";
  }

  static String latLongaddres(double lat, double long) =>
      'https://api.openweathermap.org/data/2.5/onecall?lat=$lat&lon=$long&exclude=hourly,daily,minutely&appid=41aa18abb8974c0ea27098038f6feb1b';
}
