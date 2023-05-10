import 'package:flame/components.dart';
import 'package:flame/text.dart';
import 'package:flutter/material.dart';
import 'package:wordhunt_phaser/components/textbox.dart';
import 'package:wordhunt_phaser/games/wordhunt_game.dart';
import '../constants/globals.dart';

class Box extends SpriteComponent with HasGameRef<WordHuntGame> {
  final Vector2 position2;
  final String letter;

  Box(this.position2, this.letter);
  @override
  Future<void> onLoad() async {
    await super.onLoad();
    sprite = await gameRef.loadSprite(Globals.boxSprite);

    var gameSize = gameRef.size;
    size = Vector2(gameSize[1] * 0.05, gameSize[1] * 0.05);
    position = position2;

    add(TextBox(size, letter));
  }
}
