import 'package:flutter/material.dart';

class CustomHeader extends StatelessWidget {
  final bool? isCentered;
  final EdgeInsetsGeometry? padding;
  final String text;
  final TextStyle style;
  const CustomHeader(
      {super.key,
      required this.text,
      required this.style,
      this.padding,
      this.isCentered});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      width: double.infinity,
      child: Text(
        textAlign: isCentered != null ? TextAlign.center : null,
        text,
        style: style,
      ),
    );
  }
}
