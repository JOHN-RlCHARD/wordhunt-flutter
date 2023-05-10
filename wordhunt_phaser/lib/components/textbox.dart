import 'package:flame/components.dart';
import 'package:flutter/material.dart';
import 'package:wordhunt_phaser/games/wordhunt_game.dart';
import '../constants/globals.dart';

class TextBox extends TextComponent {
  final Vector2 size2;
  final String text2;

  TextBox(this.size2, this.text2);
  @override
  Future<void> onLoad() async {
    await super.onLoad();

    var style = TextStyle(color: Colors.black, fontSize: 20);
    var regular = TextPaint(style: style);

    size = size2 * 0.7;
    position = Vector2(size2[0] - size[0], size2[0] - size[0] - 2);
    text = text2;
    textRenderer = regular;
  }
}
