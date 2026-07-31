import 'package:ecommerce/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:ecommerce/features/shop/screens/home/widgets/home_app_bar.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/device/device_utility.dart';
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
                //*Appbar
                THomeAppbar(),

                //*space between sections
                const SizedBox(height: TSizes.spaceBtwSections),
                //*Search Bar
                Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: TSizes.defaultSpace,
                  ),
                  width: TDeviceUtility.getScreenWidth(context),
                  padding: const EdgeInsets.all(TSizes.md),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(TSizes.cardRadiusLg),
                    border: Border.all(color: TColors.grey),
                  ),
                ),

                //*Catagories
              ],
            ),
          ),
        ],
      ),
    );
  }
}
