import 'package:colored_box/repositories/repositories.dart';

abstract class ColoredBoxInterface{
  Future<List<ColoredBoxModel>> getColors();
}