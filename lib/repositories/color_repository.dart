import 'dart:convert';

import 'package:flutter/services.dart';

import 'model/color.dart';

class ColorRepository {
  static Future<List<ColoredBoxModel>> getColors() async {
    final jsonString = await rootBundle.loadString('assets/color.json');

    final jsonMap = json.decode(jsonString);
    final List<dynamic> colorJsonList = jsonMap['colors'];

    final List<ColoredBoxModel> colorList = colorJsonList.map((colorJson) {
      return ColoredBoxModel.fromJson(colorJson);
    }).toList();
    return colorList;
  }
}
