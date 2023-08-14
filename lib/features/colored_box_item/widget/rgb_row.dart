import 'package:colored_box/features/colored_box_item/widget/rgb_box.dart';
import 'package:colored_box/repositories/repositories.dart';
import 'package:flutter/material.dart';

class RgbRow extends StatelessWidget {
  const RgbRow({
    super.key,
    required this.item,
  });

  final ColoredBoxModel item;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        RgbBox(
          text: Text("Red $item.red"),
        ),
        RgbBox(
          text: Text("Red $item.green"),
        ),
        RgbBox(
          text: Text("Red $item.blue"),
        ),
      ],
    );
  }
}