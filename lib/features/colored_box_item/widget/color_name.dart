import 'package:colored_box/repositories/repositories.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ColorName extends StatelessWidget {
  const ColorName({
    super.key,
    required this.item,
  });

  final ColoredBoxModel item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15.0.r),
      child: Text(
        item.name,
        style: Theme.of(context).textTheme.titleLarge,
        textAlign: TextAlign.left,
      ),
    );
  }
}
