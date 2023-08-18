import 'package:colored_box/features/provider/copy_model.dart';
import 'package:colored_box/features/colored_box_item/widget/widget.dart';
import 'package:colored_box/repositories/repositories.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class GridItemScreen extends StatelessWidget {
  final int index;
  final ColoredBoxModel item;
   const GridItemScreen({
    super.key,
    required this.item,
    required this.index,
    required this.copy,
  });
  final CopyModel copy;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChangeNotifierProvider<CopyModel>.value(
        value: copy,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderColor(
              index: index,
              item: item,
            ),
            ColorName(
              item: item,
            ),
            ColorHex(
              item: item,
            ),
            RgbRow(
              item: item,
            ),
          ],
        ),
      ),
    );
  }
}
