import 'package:colored_box/repositories/repositories.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
        margin: EdgeInsets.only(
          bottom: 5.h,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            16.r,
          ),
          color: Color(
            int.parse(
                  item.value.substring(
                    1,
                  ),
                  radix: 16,
                ) +
                0xFF000000,
          ),
        ),
        height: 100.w,
        width: 100.w,
      ),
    );
  }
}
