import 'package:ecommerce/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class TCircularIcon extends StatelessWidget {
  const TCircularIcon({super.key, required this.dark});

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
          color: dark
              ? TColors.black.withAlpha(220)
              : TColors.white.withAlpha(220),
          borderRadius: BorderRadius.circular(radius),
        ),
        child: IconButton(onPressed: () {}, icon: const Icon(Iconsax.heart5)),
      ),
    );
  }
}
