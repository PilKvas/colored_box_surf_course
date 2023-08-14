import 'package:colored_box/repositories/repositories.dart';
import 'package:flutter/material.dart';


class GridItemFigureHasValue extends StatelessWidget {
  const GridItemFigureHasValue({
    super.key,
    required this.item,
    required this.index,
  });

  final ColoredBoxModel item;

  final int index;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: '$index',
      child: Container(
        margin: const EdgeInsets.only(
          bottom: 5,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            20,
          ),
          color: Color(
            int.parse(
                  item.value.substring(1),
                  radix: 16,
                ) +
                0xFF000000,
          ),
        ),
        height: 96,
        width: 96,
      ),
    );
  }
}
