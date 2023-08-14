import 'package:colored_box/features/colored_box_grid/view/grid_screen.dart';
import 'package:flutter/material.dart';

class ColoredBoxApp extends StatelessWidget {
  const ColoredBoxApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ColoredBoxGrid(),
    );
  }
}
