import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:wordhunt_phaser/games/wordhunt_game.dart';
import 'package:wordhunt_phaser/screens/main_menu.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    MaterialApp(
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: MainMenu(),
    ),
  );
}
