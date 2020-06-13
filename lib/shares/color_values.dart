part of 'share_values.dart';

Color hexToColor(String code) {
  return new Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
}

class ColorValues {
  //Add Your color in Here
}