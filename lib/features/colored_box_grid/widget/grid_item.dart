

import 'package:colored_box/features/colored_box_grid/widget/widget.dart';
import 'package:colored_box/features/colored_box_item/view/view.dart';
import 'package:colored_box/repositories/repositories.dart';
import 'package:flutter/material.dart';


class GridItem extends StatelessWidget {
  const GridItem({
    super.key,
    required this.item,
    required this.index,
  });

  final ColoredBoxModel item;

  final int index;

  @override
  Widget build(BuildContext context) {
      bool isCopied = false;
    return GestureDetector(
          //TODO
          // onDoubleTap: () {
          //   context.read<CopyModel>().copy(context,index);
          //   Clipboard.setData(ClipboardData(text: item.value));
          // },
          onTap: () => item.value != "В разработке"
              ? Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) {
                  return ColorItem(
                    item: item,
                    index: index,
                  );
                }))
              : ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Center(
                    child: Text("Цвет в разработке"),
                  ),
                )),
          child: SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
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
                  isCopied: isCopied,
                  item: item,
                )
              ],
            ),
          ),
        );
  }
}
