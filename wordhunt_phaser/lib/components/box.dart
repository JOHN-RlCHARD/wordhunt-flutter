import 'package:flame/components.dart';
import 'package:flame/experimental.dart';
import 'package:flame/input.dart';
import 'package:flame/text.dart';
import 'package:flutter/material.dart';
import 'package:wordhunt_phaser/components/textbox.dart';
import 'package:wordhunt_phaser/games/wordhunt_game.dart';
import '../constants/globals.dart';

class Box extends SpriteComponent with HasGameRef<WordHuntGame>, Tappable {
  bool isDown = false;
  Sprite? pressedSprite;
  Sprite? unpressedSprite;
  final Vector2 position2;
  final String letter;

  Box(this.position2, this.letter);
  @override
  Future<void> onLoad() async {
    await super.onLoad();
    unpressedSprite = await gameRef.loadSprite(Globals.boxSprite);
    pressedSprite = await gameRef.loadSprite(Globals.boxRedSprite);

    var gameSize = gameRef.size;
    size = Vector2(gameSize[1] * 0.07, gameSize[1] * 0.07);
    position = position2;

    sprite = unpressedSprite;

    add(TextBox(size, letter));
  }

  // @override
  // void render(Canvas canvas) {
  //   super.render(canvas);
  //   final boxSprite = isDown ? pressedSprite : unpressedSprite;
  //   boxSprite?.render(canvas);
  // }

  @override
  bool onTapUp(_) {
    sprite = unpressedSprite;
    isDown = false;
    return true;
  }

  @override
  bool onTapDown(_) {
    sprite = pressedSprite;
    isDown = true;
    return true;
  }
}
