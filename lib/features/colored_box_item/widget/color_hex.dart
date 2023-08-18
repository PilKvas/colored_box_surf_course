
import 'package:colored_box/components/components.dart';
import 'package:colored_box/features/provider/provider.dart';
import 'package:colored_box/repositories/repositories.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class ColorHex extends StatelessWidget {
  const ColorHex({
    super.key,
    required this.item,
  });

  final ColoredBoxModel item;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(
        15.0.r,
      ),
      child: GestureDetector(
        onTap: () {
          context
              .read<CopyModel>()
              .copyLogicAndDisplaySnack(context, item.value);
          Clipboard.setData(
            ClipboardData(
              text: item.value,
            ),
          );
        },
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                20.r,
              ),
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  color: Color.fromARGB(
                    55,
                    57,
                    74,
                    8,
                  ),
                  offset: Offset(
                    0,
                    12.0,
                  ),
                  blurRadius: 40,
                )
              ]),
          child: Padding(
            padding: EdgeInsets.all(
              15.0.r,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "HEX",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                Row(
                  children: [
                    Text(
                      item.value,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    context.watch<CopyModel>().isCopy == true
                        ? Image.asset(AppColors.copyImage)
                        : const SizedBox(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
