import 'package:flutter/material.dart';
import 'package:theme_tailor_annotation/theme_tailor_annotation.dart';

part 'secondary_button_style.tailor.dart';

@tailor
class _$SecondaryButtonStyle {
  static List<Color> backgroundColor = [Colors.purple];
}

// SecondaryButtonの標準スタイルを取得する
ThemeExtension<SecondaryButtonStyle> getSecondaryButtonStyle() =>
    const SecondaryButtonStyle(
      backgroundColor: Colors.black,
    );
