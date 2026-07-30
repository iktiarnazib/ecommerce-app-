import 'package:ecommerce/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class TCircularContainer extends StatelessWidget {
  final double? width;
  final double? height;
  final double radius;
  final double padding;
  final Widget? child;
  final Color backgroundColor;
  const TCircularContainer({
    super.key,
    required this.width,
    required this.height,
    required this.radius,
    required this.padding,
    required this.child,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: 400,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(400),
        color: TColors.textWhite.withAlpha(
          25,
        ), //10% almost, it stores total 8 bit binary for color, which is max 255 steps
      ),
    );
  }
}
