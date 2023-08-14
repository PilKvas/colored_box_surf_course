import 'package:flutter/material.dart';

class GridHeader extends StatelessWidget {
  const GridHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: const Text(
        "Эксклюзивная палитра «Colored Box»",
        style: TextStyle(
          color: Colors.black,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
