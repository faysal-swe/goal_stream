import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class AppText extends StatelessWidget {
  final String title;
  final bool? isTranslate;
  final TextStyle? style;
  final int? maxLine;
  final double? maxFontSize;
  final TextAlign? textAlign;
  const AppText(
      {super.key,
        required this.title,
        this.isTranslate,
        this.style,
        this.maxLine,
        this.maxFontSize, this.textAlign});

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      (isTranslate ?? true) ? title.tr : title,
      maxLines: maxLine ?? 1,
      softWrap: true,
      style: style,
      overflow: TextOverflow.ellipsis,
      textAlign: textAlign ?? TextAlign.justify,
      maxFontSize: maxFontSize ?? double.maxFinite,
    );
  }
}