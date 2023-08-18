import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RgbBox extends StatelessWidget {
  const RgbBox({
    super.key,
    required this.color,
    required this.value,
  });

  final String color;
  final int? value;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 4,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            16.r,
          ),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(
                55,
                57,
                74,
                8,
              ),
              offset: const Offset(
                0,
                12.0,
              ),
              blurRadius: 40.r,
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
              color,
              style: Theme.of(context).textTheme.titleSmall,
            ),
            Text(
              value.toString(),
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ],
        ),
      ),
    );
  }
}
