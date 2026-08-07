import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:ecommerce/common/widgets/image/rounded_image.dart';
import 'package:ecommerce/features/shop/controllers/home_controllers.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TPromoSlider extends ConsumerWidget {
  final List<String> banners;
  const TPromoSlider({super.key, required this.banners});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final promoIndexController = ref.watch(promoIndexProvider);
    return Column(
      children: [
        CarouselSlider(
          items: banners
              .map((url) => TRoundedImage(imageUrl: url))
              .toList()
              .toList(),
          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index, reason) {
              ref.read(promoIndexProvider.notifier).state = index;
            },
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwItems),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (int i = 0; i < 3; i++) //contianer
              TRoundedContainer(
                width: 20,
                height: 4,
                margin: EdgeInsets.only(right: TSizes.sm),
                backgroundColor: promoIndexController == i
                    ? TColors.primary
                    : TColors.green,
              ),
          ],
        ),
      ],
    );
  }
}
