import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final double size;
  final Color color;
  final String text;
  final FontWeight fontWeight;

  const CustomText(
      {Key? key,
      required this.size,
      required this.color,
      required this.fontWeight,
      required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size,
        color: color,
        fontWeight: fontWeight,
      ),
    );
  }
}
