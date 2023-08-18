import 'package:colored_box/components/components.dart';
import 'package:colored_box/features/provider/copy_model.dart';
import 'package:colored_box/repositories/repositories.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class GridItemText extends StatelessWidget {
  const GridItemText({
    super.key,
    required this.item,
  });

  final ColoredBoxModel item;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 5.h,
          ),
          Text(
            item.name,
            style: Theme.of(context).textTheme.titleSmall,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Row(
            children: [
              Text(
                item.value,
                style: Theme.of(context).textTheme.titleSmall,
                maxLines: 1,
              ),
              Provider.of<CopyModel>(context).isCopy == true
                  ? Image.asset(AppColors.copyImage)
                  : const SizedBox(),
            ],
          ),
        ],
      ),
    );
  }
}
