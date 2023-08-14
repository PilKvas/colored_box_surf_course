import 'package:colored_box/repositories/repositories.dart';
import 'package:flutter/material.dart';

class GridItemText extends StatelessWidget {
  const GridItemText({super.key, required this.item, required this.isCopied});

  final ColoredBoxModel item;
  final bool isCopied;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          item.name,
        ),
        Text(item.value),
        if (isCopied) Image.asset('assets/copy.png'),
      ],
    );
  }
}
