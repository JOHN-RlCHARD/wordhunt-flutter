import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:wordhunt_phaser/games/wordhunt_game.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(GameWidget(game: WordHuntGame()));
}
