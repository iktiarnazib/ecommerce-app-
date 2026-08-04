import 'package:ecommerce/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TCartCounterIcon extends StatelessWidget {
  final Function()? onPressed;
  final Color iconColor;
  const TCartCounterIcon({
    super.key,
    required this.onPressed,
    this.iconColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          onPressed: onPressed,
          icon: Icon(Iconsax.shopping_bag, color: iconColor),
        ),
        Positioned(
          right: 0,
          child: Container(
            height: 18,
            width: 18,
            decoration: BoxDecoration(
              color: TColors.black,
              shape: BoxShape.circle,
            ),
            child: Text(
              '2',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.labelLarge!.apply(
                color: TColors.white.withAlpha(180),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
