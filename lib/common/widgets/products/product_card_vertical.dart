import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:store_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:store_app/common/widgets/icons/t_circular_icon.dart';
import 'package:store_app/common/widgets/images/t_rounded_image.dart';
import 'package:store_app/common/widgets/texts/product_price.dart';
import 'package:store_app/common/widgets/texts/product_title_text.dart';
import 'package:store_app/utils/constants/colors.dart';
import 'package:store_app/utils/constants/image_strings.dart';
import 'package:store_app/utils/constants/sizes.dart';
import 'package:store_app/utils/helpers/helper_functions.dart';

class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(TSizes.productImageRadius),
          color: dark ? TColors.darkGrey : TColors.white,
        ),
        child: Column(
          children: [
            TRoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(TSizes.sm),
              backgroundColor: dark ? TColors.dark : TColors.white,
              child: Stack(
                children: [
                  const TRoundedImage(imageUrl: TImages.productImage1),
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
            const SizedBox(
              height: TSizes.spaceBtwItems / 2,
            ),
            Padding(
              padding: const EdgeInsets.only(left: TSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TProductTitleText(
                    title: 'Green Nike Air Shoes',
                    smallSize: true,
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwItems / 2,
                  ),
                  Row(
                    children: [
                      Text(
                        'Nike',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: Theme.of(context).textTheme.labelMedium
      
                      ),
                      const SizedBox(width: TSizes.xs,),
                      const Icon(Iconsax.verify5, color: TColors.primary, size: TSizes.iconXs,),
                    ],
                  ),
                  
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const TProductPriceText(price: '120', currencySign: '\$', isLarge: true,),
      
                      Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(TSizes.cardRadiusMd),
                            bottomRight: Radius.circular(TSizes.productImageRadius),
                          ),
                          color: TColors.dark,
      
      
                        ),
      
                        child: const SizedBox(
                          width: TSizes.iconLg*1.2,
                          height: TSizes.iconLg*1.2,
                          child: Center(child: Icon(Iconsax.add, color: TColors.white,))),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
