import 'package:flutter/material.dart';

class PrimaryButtonStyle extends ThemeExtension<PrimaryButtonStyle> {
  const PrimaryButtonStyle({
    required this.backgroundColor,
  });

  final Color? backgroundColor;

  @override
  ThemeExtension<PrimaryButtonStyle> copyWith({
    Color? backgroundColor,
  }) =>
      PrimaryButtonStyle(
        backgroundColor: backgroundColor ?? this.backgroundColor,
      );

  @override
  ThemeExtension<PrimaryButtonStyle> lerp(
      covariant ThemeExtension<PrimaryButtonStyle>? other, double t) {
    if (other is! PrimaryButtonStyle) {
      return this;
    }

    return PrimaryButtonStyle(
      backgroundColor: Color.lerp(backgroundColor, other.backgroundColor, t),
    );
  }
}
