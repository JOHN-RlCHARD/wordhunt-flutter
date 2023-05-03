import 'package:flame/components.dart';
import 'package:flutter/material.dart';
import 'package:wordhunt_phaser/games/wordhunt_game.dart';
import '../constants/globals.dart';

class BackgroundComponent extends SpriteAnimationComponent
    with HasGameRef<WordHuntGame> {
  @override
  Future<void> onLoad() async {
    await super.onLoad();

    size = gameRef.size;

    final data = SpriteAnimationData.sequenced(
      textureSize: Vector2(640, 360),
      amount: 36,
      amountPerRow: 6,
      stepTime: 0.15,
    );

    animation = SpriteAnimation.fromFrameData(
        await gameRef.images.load(Globals.backgroundSprite), data);
  }
}
