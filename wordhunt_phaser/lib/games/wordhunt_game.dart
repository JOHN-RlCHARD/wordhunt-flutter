import 'dart:js';
import 'dart:math';

import 'package:flame/game.dart';
import 'package:flutter/cupertino.dart';
import 'package:wordhunt_phaser/components/background_component.dart';

class WordHuntGame extends FlameGame {
  @override
  Future<void> onLoad() async {
    await super.onLoad();

    var screenSize = Vector2(size.x, size.y);
    camera.viewport = FixedResolutionViewport(screenSize * 0.9);

    add(BackgroundComponent());
  }
}
