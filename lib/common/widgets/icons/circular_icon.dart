import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TCircularIcon extends StatelessWidget {
  final double? height, width, size;
  final EdgeInsetsGeometry? padding;
  final Color? color, backgroundColor;
  final Function()? onPressed;

  const TCircularIcon({
    super.key,
    this.height,
    this.width,
    this.size = TSizes.lg,

    this.padding,
    this.color,
    this.backgroundColor,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(100),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(Iconsax.heart5, color: color, size: size),
      ),
    );
  }
}
