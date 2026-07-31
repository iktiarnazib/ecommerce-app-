import 'package:ecommerce/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:ecommerce/common/widgets/section_heading/section_heading.dart';
import 'package:ecommerce/features/shop/screens/home/widgets/home_app_bar.dart';
import 'package:ecommerce/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:ecommerce/utils/constants/colors.dart';
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
                ),
                const SizedBox(height: TSizes.spaceBtwSections),

                //*Catagories
                TCatagories(image: TImage.cSports, title: 'Title'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TCatagories extends StatelessWidget {
  final String image, title;
  const TCatagories({super.key, required this.image, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: TSizes.defaultSpace),
      child: Column(
        children: [
          //*Search Heading
          TSectionHeading(
            title: TText.popularCatagories,
            showActionButton: false,
          ),

          const SizedBox(height: TSizes.spaceBtwItems),

          //*Catagories
          SizedBox(
            height: 80,
            child: ListView.builder(
              physics: AlwaysScrollableScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 9,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    Container(
                      height: 56,
                      width: 56,
                      padding: EdgeInsets.only(left: TSizes.sm),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: TColors.white,
                      ),
                      child: Image(
                        image: AssetImage(image),
                        fit: BoxFit.contain,
                        color: TColors.black,
                      ),
                    ),
                    Text(title, maxLines: 1, overflow: TextOverflow.ellipsis),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
