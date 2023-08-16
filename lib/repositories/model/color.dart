T _getOrDefault<T>(
  Map<String, dynamic> json, {
  required String key,
  required T defaultValue,
}) {
  final value = json[key];
  if (value is T) {
    return value;
  } else {
    return defaultValue;
  }
}

class ColoredBoxModel {
  final String name;
  final String value;
  final int? red;
  final int? green;
  final int? blue;

  ColoredBoxModel({
    required this.name,
    required this.value,
    this.red,
    this.green,
    this.blue,
  });

  factory ColoredBoxModel.fromJson(Map<String, dynamic> json) {
    if (json['value'] != null) {
      final int valueInt = int.parse(json['value'].substring(1), radix: 16);
      final int red = (valueInt >> 16) & 0xFF;
      final int green = (valueInt >> 8) & 0xFF;
      final int blue = valueInt & 0xFF;
      return ColoredBoxModel(
        name: json['name'],
        value: _getOrDefault(json, key: 'value', defaultValue: "В разработке"),
        red: red,
        green: green,
        blue: blue,
      );
    } else {
      return ColoredBoxModel(
        name: json['name'],
        value: _getOrDefault(json, key: 'value', defaultValue: "В разработке"),
      );
    }
  }
}
