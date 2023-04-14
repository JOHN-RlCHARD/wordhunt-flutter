// import 'package:flutter/material.dart';
// import 'package:flame/game.dart';
// import 'package:wordhunt_phaser/game.dart';

// WordHunt _wordHunt = WordHunt();

// enum Menu {main, gameOver}

// class GamePlay extends StatelessWidget {
//   const GamePlay({super.key});

//   @override
//   Widget build(BuildContext context) {

//     return GameWidget(
//       initialActiveOverlays: [Menu.main.name],
//       game: _wordHunt,
//       overlayBuilderMap: {
//         Menu.main.name: (BuildContext context, Wordhunt gameRef) =>
//           MainMenu(gameRef: gameRef),
//       },
//     );
//   }
// }