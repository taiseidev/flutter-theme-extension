// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_element

part of 'secondary_button_style.dart';

// **************************************************************************
// ThemeTailorGenerator
// **************************************************************************

class SecondaryButtonStyle extends ThemeExtension<SecondaryButtonStyle> {
  const SecondaryButtonStyle({
    required this.backgroundColor,
  });

  final Color backgroundColor;

  static final SecondaryButtonStyle light = SecondaryButtonStyle(
    backgroundColor: _$SecondaryButtonStyle.backgroundColor[0],
  );

  static final SecondaryButtonStyle dark = SecondaryButtonStyle(
    backgroundColor: _$SecondaryButtonStyle.backgroundColor[1],
  );

  static final themes = [
    light,
    dark,
  ];

  @override
  SecondaryButtonStyle copyWith({
    Color? backgroundColor,
  }) {
    return SecondaryButtonStyle(
      backgroundColor: backgroundColor ?? this.backgroundColor,
    );
  }

  @override
  SecondaryButtonStyle lerp(
      ThemeExtension<SecondaryButtonStyle>? other, double t) {
    if (other is! SecondaryButtonStyle) return this;
    return SecondaryButtonStyle(
      backgroundColor: Color.lerp(backgroundColor, other.backgroundColor, t)!,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SecondaryButtonStyle &&
            const DeepCollectionEquality()
                .equals(backgroundColor, other.backgroundColor));
  }

  @override
  int get hashCode {
    return Object.hash(
        runtimeType, const DeepCollectionEquality().hash(backgroundColor));
  }
}

extension SecondaryButtonStyleBuildContextProps on BuildContext {
  SecondaryButtonStyle get _secondaryButtonStyle =>
      Theme.of(this).extension<SecondaryButtonStyle>()!;
  Color get backgroundColor => _secondaryButtonStyle.backgroundColor;
}
