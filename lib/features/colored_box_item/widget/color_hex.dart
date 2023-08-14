import 'package:colored_box/features/colored_box_item/provider/provider.dart';
import 'package:colored_box/repositories/repositories.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';



class ColorHex extends StatelessWidget {
  const ColorHex({
    super.key,
    required this.item,
  });

  final ColoredBoxModel item;

  @override
  Widget build(BuildContext context) {
    return Consumer<CopyModel>(
      builder: (context, copy, child) {
        return Padding(
          padding: const EdgeInsets.all(15.0),
          child: GestureDetector(
            onTap: () {
              context.read<CopyModel>().copy(context);
              Clipboard.setData(ClipboardData(text: item.value));
            },
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
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
                    const Text("HEX"),
                    Row(
                      children: [
                        Text(item.value),
                        copy.isCopied == true
                            ? Image.asset('assets/copy.png')
                            : const SizedBox(),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
