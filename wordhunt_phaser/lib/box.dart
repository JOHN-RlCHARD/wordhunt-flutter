import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Box extends StatefulWidget {
  final String letter;
  final Bool isRandomLetter;

  const Box({super.key, required this.letter, required this.isRandomLetter});

  @override
  State<Box> createState() => _BoxState();
}

class _BoxState extends State<Box> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      width: 40,
      height: 40,
      child: Center(
        child: Text(widget.letter),
      ),
    );
  }
}
