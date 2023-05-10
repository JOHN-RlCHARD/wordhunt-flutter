import 'dart:js';
import 'dart:math';

import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flutter/cupertino.dart';
import 'package:wordhunt_phaser/components/background_component.dart';
import 'package:wordhunt_phaser/components/box.dart';

class WordHuntGame extends FlameGame {
  @override
  Future<void> onLoad() async {
    await super.onLoad();

    var letters = [
      'A',
      'B',
      'C',
      'D',
      'E',
      'F',
      'G',
      'H',
      'I',
      'J',
      'K',
      'L',
      'M',
      'N',
      'O',
      'P',
      'Q',
      'R',
      'S',
      'T',
      'U',
      'V',
      'X',
      'Y',
      'Z'
    ];

    add(BackgroundComponent());

    var boxSize = (size[1] * 0.05);

    var midleX = size[0] / 2;
    var midleY = size[1] / 2;

    var lines = 4;
    var cols = 4;

    var startX = midleX - (lines / 2 * boxSize);
    var startY = midleY - (cols / 2 * boxSize);

    for (int i = 0; i < cols; i++) {
      for (int j = 0; j < lines; j++) {
        add(Box(Vector2(startX + (i * boxSize), startY + (j * boxSize)), 'A'));
      }
    }
  }
}
