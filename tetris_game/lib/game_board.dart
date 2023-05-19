import 'dart:async';

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
    //frame refresh rate
    Duration frameRate = const Duration(milliseconds: 2000);
    gameLoop(frameRate);
  }

  //game loop
  void gameLoop(Duration frameRate) {
    Timer.periodic(frameRate, (timer) {
      setState(() {
        //move current piese down
        currentPiese.movePiece(Direction.down);
      });
    });
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
