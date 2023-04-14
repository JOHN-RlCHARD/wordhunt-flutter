import 'package:flame/components.dart';
import 'package:wordhunt_phaser/games/wordhunt_game.dart';
import '../constants/globals.dart';

class BackgroundComponent extends SpriteComponent
    with HasGameRef<WordHuntGame> {
  @override
  Future<void> onLoad() async {
    await super.onLoad();

    sprite = await gameRef.loadSprite(Globals.backgroundSprite);
    size = gameRef.size;
  }
}
