import 'package:colored_box/features/colored_box_grid/widget/widget.dart';
import 'package:colored_box/features/provider/copy_model.dart';
import 'package:colored_box/features/colored_box_item/view/view.dart';
import 'package:colored_box/repositories/repositories.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class GridItem extends StatelessWidget {
  const GridItem({
    super.key,
    required this.item,
    required this.index,
    required this.copy,
  });

  final ColoredBoxModel item;

  final int index;

  final CopyModel copy;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: GestureDetector(
        onDoubleTap: () {
          Provider.of<CopyModel>(context, listen: false)
              .copyLogicAndDisplaySnack(context, item.value);
          Clipboard.setData(
            ClipboardData(text: item.value),
          );
        },
        onTap: () {
          Provider.of<CopyModel>(context, listen: false)
              .noDataLogicAndDisplaySnack(
            context,
            item.value,
            GridItemScreen(
              item: item,
              index: index,
              copy: copy,
            ),
          );
        },
        child: Column(
          children: [
            SizedBox(
              child: item.value != "В разработке"
                  ? GridItemFigureHasValue(
                      item: item,
                      index: index,
                    )
                  : const GridItemFigureNoValue(),
            ),
            GridItemText(
              item: item,
            ),
          ],
        ),
      ),
    );
  }
}
