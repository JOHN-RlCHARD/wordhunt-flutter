import "package:flutter/material.dart";
import "package:wordhunt_phaser/games/wordhunt_game.dart";
import "package:wordhunt_phaser/screens/game_play.dart";

class MainMenu extends StatelessWidget {
  const MainMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text("Word Hunt"),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => const GamePlay(),
                ));
              },
              child: Text("Play"),
            )
          ],
        ),
      ),
    );
  }
}
