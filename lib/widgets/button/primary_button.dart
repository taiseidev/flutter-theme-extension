import 'package:flutter/material.dart';
import 'package:theme_extension_sample/widgets/button/primary_button_style.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.style,
  });

  final String text;
  final VoidCallback onPressed;
  final PrimaryButtonStyle? style;

  @override
  Widget build(BuildContext context) {
    final defaultStyle = Theme.of(context).extension<PrimaryButtonStyle>()!;
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
