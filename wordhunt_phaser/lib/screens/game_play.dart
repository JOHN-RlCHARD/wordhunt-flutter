import 'package:flame/game.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import '../games/wordhunt_game.dart';

WordHuntGame _wordHuntGame = WordHuntGame();

class GamePlay extends StatelessWidget {
  const GamePlay({super.key});

  @override
  Widget build(BuildContext context) {
    return GameWidget(game: _wordHuntGame);
  }
}
