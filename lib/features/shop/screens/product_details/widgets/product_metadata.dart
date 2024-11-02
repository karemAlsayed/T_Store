import 'package:flutter/material.dart';
import 'package:store_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:store_app/common/widgets/images/t_circular_image.dart';
import 'package:store_app/common/widgets/texts/product_price.dart';
import 'package:store_app/common/widgets/texts/product_title_text.dart';
import 'package:store_app/common/widgets/texts/t_brandtitle_with_verifiedicon.dart';
import 'package:store_app/utils/constants/colors.dart';
import 'package:store_app/utils/constants/enums.dart';
import 'package:store_app/utils/constants/image_strings.dart';
import 'package:store_app/utils/constants/sizes.dart';
import 'package:store_app/utils/helpers/helper_functions.dart';

class TProductMetaData extends StatelessWidget {
  const TProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            TRoundedContainer(
            
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
            const SizedBox(width:  TSizes.spaceBtwItems,),
              const TProductPriceText(price: '250', currencySign: '\$', maxLines: 1,isLarge: true,),
            const SizedBox(width:  TSizes.spaceBtwItems/2,),
            const TProductPriceText(price: '200', currencySign: '\$', lineThrough: true, maxLines: 1,),
          
          
          ],
        ),
        const SizedBox(height:  TSizes.spaceBtwItems/1.5,),
        const TProductTitleText(title: 'Green Nike Sport Sneakers',),
        const SizedBox(height:  TSizes.spaceBtwItems/1.5,),
    
          Row(
            children: [
              const TProductTitleText(title: 'Status',),
              const SizedBox(width:  TSizes.spaceBtwItems,),
              Text('In Stock', style: Theme.of(context).textTheme.titleMedium),
            ],
          ),
          const SizedBox(height:  TSizes.spaceBtwItems/1.5,),
          Row(
            children: [
              TCircularIMage(image: TImages.nikeLogo, width: 32, height:32,backgroundColor: dark ? TColors.black : TColors.white,),
              const SizedBox(width:  TSizes.spaceBtwItems/2,),
              const TBrandIconWithVerifiedIcon(title: 'Nike',brandTextSize: TextSizes.medium,),
            ],
          )
    
      ],
    );
  }
}
