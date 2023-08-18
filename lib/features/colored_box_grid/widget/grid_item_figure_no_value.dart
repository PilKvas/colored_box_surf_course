import 'package:colored_box/components/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GridItemFigureNoValue extends StatelessWidget {
  const GridItemFigureNoValue({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 5.h,
      ),
      height: 100.w,
      width: 100.w,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(
          16.r,
        ),
        child: Image.asset(
          AppColors.errorImage,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
