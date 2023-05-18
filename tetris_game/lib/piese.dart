import 'package:tetris_game/values.dart';

class Piese {
  //type of tetris piese => тип тетриса
  Piese({required this.type});
  Tetromino type;
  // the piese is just a list of integers =>piese - это просто список целых чисел
  List<int> position = [];
  //generate the integers =>генерировать целые числа
  void initializePiese() {
    //эгерде түрү Tetromino.L болсо, анда tetromino L үчүн белгилүү бир позиция коюларын аныктайт.
    switch (type) {
      case Tetromino.L:
        position = [
          4,
          14,
          24,
          25,
        ];
        break;

      default:
    }
  }
}
