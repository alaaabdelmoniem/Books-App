import 'package:books_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.backgroundcolor,
    required this.textColor,
    required this.borderRadius,
    required this.text,
    this.fontSize,
    this.onPressed,
  });
  final Color backgroundcolor;
  final Color textColor;
  final String text;
  final BorderRadius borderRadius;
  final double? fontSize;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: backgroundcolor,
          shape: RoundedRectangleBorder(borderRadius: borderRadius),
        ),
        child: Text(
          text,
          style: Styles.textStyle18.copyWith(
            fontWeight: FontWeight.w900,
            color: textColor,
            fontSize: fontSize,
          ),
        ),
      ),
    );
  }
}
