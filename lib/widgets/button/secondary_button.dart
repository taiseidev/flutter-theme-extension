import 'package:flutter/material.dart';
import 'package:theme_extension_sample/widgets/button/secondary_button_style.dart';

class SecondaryButton extends StatelessWidget {
  const SecondaryButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.style,
  });

  final String text;
  final VoidCallback onPressed;
  final SecondaryButtonStyle? style;

  @override
  Widget build(BuildContext context) {
    final defaultStyle = Theme.of(context).extension<SecondaryButtonStyle>()!;
    final backgroundColor =
        style?.backgroundColor ?? defaultStyle.backgroundColor;
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
      ),
      onPressed: onPressed,
      child: Text(text),
    );
  }
}
