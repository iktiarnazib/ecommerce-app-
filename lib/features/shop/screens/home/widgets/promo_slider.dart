import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:ecommerce/common/widgets/image/rounded_image.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/image_string.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TPromoSlider extends StatelessWidget {
  const TPromoSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: [
            const TRoundedImage(imageUrl: TImage.promoBanner1),
            const TRoundedImage(imageUrl: TImage.promoBanner2),
            const TRoundedImage(imageUrl: TImage.promoBanner3),
          ],
          options: CarouselOptions(viewportFraction: 1),
        ),
        const SizedBox(height: TSizes.spaceBtwItems),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (int i = 0; i < 3; i++) //contianer
              const TCircularContainer(
                width: 20,
                height: 4,
                margin: EdgeInsets.only(right: TSizes.sm),
                backgroundColor: TColors.green,
              ),
          ],
        ),
      ],
    );
  }
}
