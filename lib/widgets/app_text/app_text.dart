import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';


class AppText extends StatelessWidget {
  final String title;
  final TextStyle? style;
  final int? maxLine;
  final double? maxFontSize;
  final TextAlign? textAlign;
  const AppText(
      {super.key,
        required this.title,
        this.style,
        this.maxLine,
        this.maxFontSize, this.textAlign});

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      title,
      maxLines: maxLine ?? 1,
      softWrap: true,
      style: style,
      overflow: TextOverflow.ellipsis,
      textAlign: textAlign ?? TextAlign.justify,
      maxFontSize: maxFontSize ?? double.maxFinite,
    );
  }
}