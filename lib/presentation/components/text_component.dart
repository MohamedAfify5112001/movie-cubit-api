import 'package:flutter/material.dart';

class TextComponent extends StatelessWidget {
  final String text;
  final Color color;
  final FontWeight? fontWeight;
  final double fontSize;
  final int? maxLines;
  final TextOverflow? overflow;

  const TextComponent(
      {Key? key,
      required this.text,
      required this.color,
      this.fontWeight,
      required this.fontSize,
      this.overflow,
      this.maxLines})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,
      style: TextStyle(
        color: color,
        fontWeight: fontWeight,
        fontSize: fontSize,
        overflow: overflow,
      ),
    );
  }
}
