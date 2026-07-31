import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/product_cart/cart_product_icon.dart';
import 'package:ecommerce/features/shop/screens/home/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/text_string.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          TPrimaryHeaderContainer(
            child: Column(
              children: [
                TAppBar(
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        TText.homeAppbarTitle,
                        style: Theme.of(
                          context,
                        ).textTheme.labelMedium!.apply(color: TColors.grey),
                      ),
                      Text(
                        TText.homeAppbarSubTitle,
                        style: Theme.of(
                          context,
                        ).textTheme.headlineSmall!.apply(color: TColors.white),
                      ),
                    ],
                  ),
                  actions: [
                    TCartCounterIcon(
                      iconColor: TColors.white.withAlpha(200),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
