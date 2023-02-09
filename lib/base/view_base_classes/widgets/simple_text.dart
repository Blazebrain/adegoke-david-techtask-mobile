import 'package:flutter/material.dart';

import '../style/style.dart';

class SimpleText extends StatelessWidget {
  final String? text;
  final Color? color;
  final FontWeight? weight;
  final double? size;
  final int? maxLines;

  const SimpleText(
    this.text, {
    Key? key,
    this.color,
    this.weight,
    this.size,
    this.maxLines,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      '$text',
      maxLines: maxLines,
      softWrap: true,
      overflow: maxLines != null ? TextOverflow.ellipsis : null,
      style: GoogleFonts.montserrat(
        fontSize: size ?? 16,
        fontWeight: weight ?? FontWeight.w400,
        color: color ?? textBlackColor,
      ),
    );
  }
}
