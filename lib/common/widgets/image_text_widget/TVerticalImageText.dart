import 'package:ecommerce/common/widgets/section_heading/section_heading.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_string.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TVerticalImageText extends StatelessWidget {
  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;
  const TVerticalImageText({
    super.key,
    required this.image,
    required this.title,
    this.textColor = TColors.white,
    this.onTap,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
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
                          color:
                              backgroundColor ??
                              (dark ? TColors.dark : TColors.white),
                        ),
                        child: Image(
                          image: AssetImage(image),
                          fit: BoxFit.contain,
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
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
