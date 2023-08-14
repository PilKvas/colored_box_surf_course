import 'package:colored_box/repositories/repositories.dart';
import 'package:flutter/material.dart';

class ColorName extends StatelessWidget {
  const ColorName({
    super.key,
    required this.item,
  });

  final ColoredBoxModel item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Text(
        item.name,
        style: const TextStyle(
          fontSize: 30,
          color: Color.fromARGB(255, 37, 40, 56),
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.left,
      ),
    );
  }
}
