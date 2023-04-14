import 'package:flame/game.dart';
import 'package:wordhunt_phaser/components/background_component.dart';

class WordHuntGame extends FlameGame {
  @override
  Future<void> onLoad() async {
    await super.onLoad();

    add(BackgroundComponent());
  }
}
