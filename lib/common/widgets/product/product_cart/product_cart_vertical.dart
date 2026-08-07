import 'package:ecommerce/common/styles/shadow_style.dart';
import 'package:ecommerce/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:ecommerce/common/widgets/image/rounded_image.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/image_string.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TProductCartVertical extends StatelessWidget {
  const TProductCartVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Container(
      width: 180,
      padding: EdgeInsets.all(1),
      decoration: BoxDecoration(
        boxShadow: [TShadowStyle.verticalProductShadow],
        borderRadius: BorderRadius.circular(TSizes.productImageRadius),
        color: dark ? TColors.darkGrey : TColors.white,
      ),

      child: Column(
        children: [
          //* Thumbnail, wishlist button, discount tag
          TRoundedContainer(
            height: 180,
            padding: EdgeInsets.all(TSizes.sm),
            backgroundColor: dark ? TColors.dark : TColors.white,
            child: Stack(
              children: [
                //* Thumbnail Image
                TRoundedImage(
                  imageUrl: TImage.productImage2,
                  applyImageRadius: true,
                ),

                //* Sale Tag
                TRoundedContainer(
                  radius: TSizes.sm,s
                  backgroundColor: TColors.secondary.withAlpha(200),
                  padding: const EdgeInsets.symmetric(
                    horizontal: TSizes.sm,
                    vertical: TSizes.xs,
                  ),
                  child: Text(
                    "25%",
                    style: Theme.of(
                      context,
                    ).textTheme.labelLarge!.apply(color: TColors.black),
                  ),
                ),
              ],
            ),
          ),
          //* Details
        ],
      ),
    );
  }
}
