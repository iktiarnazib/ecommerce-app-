import 'package:ecommerce/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class RoundedContainer extends StatelessWidget {
  final double? height, width;
  final Widget? child;
  final double padding;
  final Color backgroundColor;
  final double borderRadius;

  const RoundedContainer({
    super.key,
    this.height = 400,
    this.width = 400,
    this.child,
    this.padding = 0,
    this.backgroundColor = TColors.white,
    this.borderRadius = 400,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: child,
    );
  }
}
