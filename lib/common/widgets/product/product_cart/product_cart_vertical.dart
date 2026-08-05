import 'package:ecommerce/common/styles/shadow_style.dart';
import 'package:ecommerce/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TProductCartVertical extends StatelessWidget {
  const TProductCartVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Container(
      height: 180,
      decoration: BoxDecoration(
        boxShadow: [TShadowStyle.verticalProductShadow],
        borderRadius: BorderRadius.circular(TSizes.productImageRadius),
        color: dark ? TColors.darkGrey : TColors.white,
      ),
      child: Column(
        children: [
          //* Thumbnail, wishlist button, discount tag
          TCircularContainer(
            width: 180,
            height: 180,
            padding: const EdgeInsets.all(TSizes.sm),
            radius: 0,
            backgroundColor: dark ? TColors.dark : TColors.white,
            child: Stack(
              children: [
                //* Thumbnail Image
              ],
            ),
          ),
          //* Details
        ],
      ),
    );
  }
}
