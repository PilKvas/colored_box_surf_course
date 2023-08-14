import 'package:colored_box/features/colored_box_item/widget/widget.dart';
import 'package:colored_box/repositories/repositories.dart';
import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  final int index;
  final ColoredBoxModel item;

  const ColorItem({super.key, required this.item, required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeaderColor(index: index, item: item),
          ColorName(item: item),
          ColorHex(item: item),
          RgbRow(item: item)
        ],
      ),
    );
  }
}