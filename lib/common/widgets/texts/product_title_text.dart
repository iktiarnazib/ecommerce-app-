import 'package:flutter/material.dart';

class TProductTitleText extends StatelessWidget {
  final String title;
  final bool smallText;
  final int maxline;
  final TextAlign? textAlign;

  const TProductTitleText({
    super.key,
    required this.title,
    this.smallText = true,
    this.maxline = 2,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: smallText
          ? Theme.of(context).textTheme.labelLarge
          : Theme.of(context).textTheme.titleSmall,
      overflow: TextOverflow.ellipsis,
      maxLines: maxline,
      textAlign: textAlign,
    );
  }
}
