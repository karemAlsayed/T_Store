import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:store_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:store_app/common/widgets/icons/t_circular_icon.dart';
import 'package:store_app/common/widgets/images/t_rounded_image.dart';
import 'package:store_app/common/widgets/texts/product_price.dart';
import 'package:store_app/common/widgets/texts/product_title_text.dart';

import 'package:store_app/common/widgets/texts/t_brandtitle_with_verifiedicon.dart';
import 'package:store_app/utils/constants/colors.dart';
import 'package:store_app/utils/constants/image_strings.dart';
import 'package:store_app/utils/constants/sizes.dart';
import 'package:store_app/utils/helpers/helper_functions.dart';

class TProductCardHorizontal extends StatelessWidget {
  const TProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Container(
      width: 310,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(TSizes.productImageRadius),
        color: dark ? TColors.darkGrey : TColors.softGrey,
      ),
      child: Row(
        children: [
          TRoundedContainer(
            height: 120,
            padding: const EdgeInsets.all(TSizes.sm),
            backgroundColor: dark ? TColors.dark : TColors.light,
            child: Stack(
              children: [
                const SizedBox(
                    width: 120,
                    height: 120,
                    child: TRoundedImage(
                      imageUrl: TImages.productImage1,
                      applyImageRadius: true,
                    )),
                Positioned(
                  top: 12,
                  left: 12,
                  child: TRoundedContainer(
                    radius: TSizes.sm,
                    backgroundColor: TColors.secondary.withOpacity(0.8),
                    padding: const EdgeInsets.symmetric(
                        horizontal: TSizes.sm, vertical: TSizes.xs),
                    child: Text(
                      '25%',
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .copyWith(color: TColors.black),
                    ),
                  ),
                ),
                const Positioned(
                  top: 0,
                  right: 0,
                  child: TCircularIcon(
                    icon: Iconsax.heart5,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 172,
            child: Padding(
              padding: const EdgeInsets.only(left: TSizes.sm, top: TSizes.sm),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(TSizes.sm),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TProductTitleText(
                          title: 'Green Sport Sneackers',
                          smallSize: true,
                        ),
                        SizedBox(
                          height: TSizes.spaceBtwItems / 2,
                        ),
                        TBrandIconWithVerifiedIcon(
                          title: 'Nike',
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Flexible(child: TProductPriceText(price: '256.0')),
                      Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(TSizes.cardRadiusMd),
                            bottomRight:
                                Radius.circular(TSizes.productImageRadius),
                          ),
                          color: TColors.dark,
                        ),
                        child: const SizedBox(
                            width: TSizes.iconLg * 1.2,
                            height: TSizes.iconLg * 1.2,
                            child: Center(
                                child: Icon(
                              Iconsax.add,
                              color: TColors.white,
                            ))),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
