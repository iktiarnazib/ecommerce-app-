import 'package:ecommerce/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class TRoundedContainer extends StatelessWidget {
  final double? width;
  final double? height;
  final double radius;
  final EdgeInsetsGeometry? padding;
  final Widget? child;
  final Color backgroundColor;
  final EdgeInsetsGeometry? margin;
  const TRoundedContainer({
    super.key,
    this.width = 400,
    this.height = 400,
    this.radius = 400,
    this.padding,
    this.margin,
    this.child,
    this.backgroundColor = TColors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color:
            backgroundColor, //10% almost, it stores  total 8 bit binary for color, which is max 255 steps
      ),
      child: child,
    );
  }
}
