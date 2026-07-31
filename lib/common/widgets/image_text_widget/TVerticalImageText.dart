import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TVerticalImageText extends StatelessWidget {
  const TVerticalImageText({
    super.key,
    required this.backgroundColor,

    required this.image,
    required this.title,
  });

  final Color? backgroundColor;

  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(right: TSizes.spaceBtwItems),
          height: 56,
          width: 56,
          padding: EdgeInsets.only(left: TSizes.sm),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: backgroundColor ?? (dark ? TColors.dark : TColors.white),
          ),
          child: Image(
            image: AssetImage(image),
            fit: BoxFit.cover,
            color: TColors.black,
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwItems / 2),
        SizedBox(
          width: 55,
          child: Text(
            title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.labelMedium!.apply(
              color: dark ? TColors.white : TColors.black,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
