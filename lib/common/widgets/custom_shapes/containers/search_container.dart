import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/device/device_utility.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TSearchBar extends StatelessWidget {
  final bool showBackground, showBorder;
  final String text;
  final IconData? icon;
  const TSearchBar({
    super.key,
    this.showBackground = true,
    this.showBorder = true,
    required this.text,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace),
      width: TDeviceUtility.getScreenWidth(context),
      padding: const EdgeInsets.all(TSizes.md),
      decoration: BoxDecoration(
        color: showBackground
            ? dark
                  ? TColors.dark
                  : TColors.white
            : Colors.transparent,
        borderRadius: BorderRadius.circular(TSizes.cardRadiusLg),
        border: showBorder ? Border.all(color: TColors.grey) : null,
      ),
      child: Row(
        children: [
          Icon(icon, color: dark ? TColors.white : TColors.darkGrey),
          const SizedBox(width: TSizes.spaceBtwItems),
          Text(text, style: Theme.of(context).textTheme.bodyMedium!),
        ],
      ),
    );
  }
}
