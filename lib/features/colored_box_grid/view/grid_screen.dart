

import 'package:colored_box/features/colored_box_grid/widget/widget.dart';
import 'package:colored_box/repositories/repositories.dart';
import 'package:flutter/material.dart';

class ColoredBoxGrid extends StatefulWidget {
  const ColoredBoxGrid({super.key});

  @override
  State<ColoredBoxGrid> createState() => _ColoredBoxGridState();
}

class _ColoredBoxGridState extends State<ColoredBoxGrid> {
  @override
  void initState() {
    ColorRepository.getColors();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            GridHeader(),
            GridBody(),
          ],
        ),
      ),
    );
  }
}

