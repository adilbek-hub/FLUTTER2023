import 'package:flutter/material.dart';
import 'package:tetris_game/piese.dart';
import 'package:tetris_game/pixel.dart';
import 'package:tetris_game/values.dart';

class GameBoard extends StatefulWidget {
  const GameBoard({super.key});

  @override
  State<GameBoard> createState() => _GameBoardState();
}

class _GameBoardState extends State<GameBoard> {
  // grid dimentions => Размеры сетки
  int rowLength = 10;
  int colLength = 15;
  // current tetris piese => текущий тетрис пирог
  Piese currentPiese = Piese(type: Tetromino.L);
  @override
  void initState() {
    super.initState();
    startGame();
  }

//и в startGame() нам просто нужно инициализировать кусок. Итак, как только мы узнаем тип, мы должны вызвать этот
//метод инициализации части, чтобы назначить позицию этой части.
  void startGame() {
    currentPiese.initializePiese();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: GridView.builder(
        itemCount: rowLength * colLength,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: rowLength),
        itemBuilder: (contex, index) {
          if (currentPiese.position.contains(index)) {
            return Pixel(color: Colors.yellow, child: index);
          } else {
            return Pixel(
              color: Colors.grey[900],
              child: index,
            );
          }
        },
      ),
    );
  }
}
