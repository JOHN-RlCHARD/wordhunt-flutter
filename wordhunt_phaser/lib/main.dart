import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:wordhunt_phaser/game.dart';

void main() {
  print('starting...');
  runApp(GameWidget(game: WordHunt()));
}
