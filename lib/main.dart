import 'package:colored_box/colored_box_app.dart';
import 'package:colored_box/features/colored_box_item/provider/copy_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(
      ChangeNotifierProvider(
        create: (context) => CopyModel(),
        child: const ColoredBoxApp(),
      ),
    );
