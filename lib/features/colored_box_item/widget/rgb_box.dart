import 'package:flutter/material.dart';

class RgbBox extends StatelessWidget {
  const RgbBox({
    super.key,
    required this.text,
  });

  final Widget text;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
                color: Color.fromARGB(55, 57, 74, 8),
                offset: Offset(0, 12.0),
                blurRadius: 40)
          ]),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            text,
          ],
        ),
      ),
    );
  }
}