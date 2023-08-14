import 'package:colored_box/features/colored_box_item/provider/provider.dart';
import 'package:colored_box/repositories/repositories.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';



class HeaderColor extends StatelessWidget {
  const HeaderColor({
    super.key,
    required this.index,
    required this.item,
  });

  final int index;
  final ColoredBoxModel item;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Hero(
          tag: '$index',
          child: Container(
            height: MediaQuery.of(context).size.height / 2,
            color: Color(
                int.parse(item.value.substring(1), radix: 16) + 0xFF000000),
          ),
        ),
        SafeArea(
          child: IconButton(
              onPressed: () {
                context.read<CopyModel>().leave();
                Navigator.of(context).pop();
              },
              icon: const Icon(
                Icons.arrow_back_ios_new,
                color: Colors.white,
              )),
        )
      ],
    );
  }
}
