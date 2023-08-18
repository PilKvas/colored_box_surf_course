import 'dart:convert';

import 'package:colored_box/repositories/color_repository_abstract.dart';
import 'package:flutter/services.dart';

import 'model/color.dart';

class ColorRepository implements ColoredBoxInterface {
  @override
  Future<List<ColoredBoxModel>> getColors() async {
    final jsonString = await rootBundle.loadString('assets/color.json');

    final jsonMap = json.decode(jsonString);
    final List<dynamic> colorJsonList = jsonMap['colors'];

    final List<ColoredBoxModel> colorList = colorJsonList.map((colorJson) {
      return ColoredBoxModel.fromJson(colorJson);
    }).toList();
    return colorList;
  }
}
