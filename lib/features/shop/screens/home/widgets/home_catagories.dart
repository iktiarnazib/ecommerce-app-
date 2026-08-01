import 'package:ecommerce/common/widgets/image_text_widget/TVerticalImageText.dart';
import 'package:ecommerce/common/widgets/section_heading/section_heading.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_string.dart';
import 'package:flutter/material.dart';

class THomeCatagories extends StatelessWidget {
  const THomeCatagories({
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
    return Padding(
      padding: const EdgeInsets.only(left: TSizes.defaultSpace),
      child: Column(
        children: [
          TSectionHeading(
            title: TText.popularCatagories,
            showActionButton: false,
            textColor: TColors.white,
          ),
          const SizedBox(height: TSizes.spaceBtwItems),
          SizedBox(
            height: 80,
            child: ListView.builder(
              physics: AlwaysScrollableScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 9,
              itemBuilder: (BuildContext context, int index) {
                return TVerticalImageText(
                  backgroundColor: TColors.white,
                  image: image,
                  title: title,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
