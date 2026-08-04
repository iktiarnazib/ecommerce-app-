import 'package:ecommerce/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:ecommerce/common/widgets/product/product_cart/product_cart_vertical.dart';
import 'package:ecommerce/features/shop/screens/home/widgets/home_app_bar.dart';
import 'package:ecommerce/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:ecommerce/features/shop/screens/home/widgets/home_catagories.dart';
import 'package:ecommerce/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:ecommerce/utils/constants/image_string.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_string.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          //* Header Container
          TPrimaryHeaderContainer(
            child: Column(
              children: [
                //*Appbar
                THomeAppbar(),

                //*space between sections
                const SizedBox(height: TSizes.spaceBtwSections),

                //*Search Bar
                TSearchBar(
                  icon: Iconsax.search_normal,
                  text: TText.searchForItems,
                  onTap: () {},
                ),
                const SizedBox(height: TSizes.spaceBtwSections),

                //*Catagories
                THomeCatagories(
                  image: TImage.cElectronics,
                  title: 'Electronics',
                  backgroundColor: null,
                ),
              ],
            ),
          ),
          //* Body
          Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
                //promo Slider
                const TPromoSlider(
                  banners: [
                    TImage.promoBanner1,
                    TImage.promoBanner2,
                    TImage.promoBanner3,
                  ],
                ),
                TProductCartVertical(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
