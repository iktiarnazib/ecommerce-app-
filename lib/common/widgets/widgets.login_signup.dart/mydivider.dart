import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_string.dart';
import 'package:flutter/material.dart';

class TDivider extends StatelessWidget {
  const TDivider({super.key, required this.dark});

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: TSizes.spaceBtwSections),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Divider(
              color: dark ? TColors.darkGrey : TColors.grey,
              thickness: 0.5,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: TSizes.sm),
            child: Text(TText.orSignInWith),
          ),
          Expanded(
            child: Divider(
              color: dark ? TColors.darkGrey : TColors.grey,
              thickness: 0.5,
            ),
          ),
        ],
      ),
    );
  }
}
