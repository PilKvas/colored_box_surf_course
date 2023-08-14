import 'package:flutter/material.dart';

class GridItemFigureNoValue extends StatelessWidget {
  const GridItemFigureNoValue({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 5,
      ),
      height: 96,
      width: 96,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(
          10,
        ),
        child: Image.asset(
          'assets/white.jpeg',
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
