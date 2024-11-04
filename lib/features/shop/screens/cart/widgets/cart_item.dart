


import 'package:flutter/material.dart';
import 'package:store_app/common/widgets/images/t_rounded_image.dart';
import 'package:store_app/common/widgets/texts/product_title_text.dart';
import 'package:store_app/common/widgets/texts/t_brandtitle_with_verifiedicon.dart';
import 'package:store_app/utils/constants/colors.dart';
import 'package:store_app/utils/constants/image_strings.dart';
import 'package:store_app/utils/constants/sizes.dart';
import 'package:store_app/utils/helpers/helper_functions.dart';

class TCartItem extends StatelessWidget {
  const TCartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TRoundedImage(
          imageUrl: TImages.productImage1,
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(TSizes.sm),
          backgroundColor: THelperFunctions.isDarkMode(context)
              ? TColors.darkerGrey
              : TColors.light,
        ),
        const SizedBox(
          width: TSizes.spaceBtwItems,
        ),
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              const TBrandIconWithVerifiedIcon(title: 'Nike'),
              const SizedBox(
                height: TSizes.spaceBtwItems / 2,
              ),
              const Flexible(
                child: TProductTitleText(
                  title: 'Green Sport Sneackers',
                  maxLines: 1,
                  textAlign: TextAlign.start,
                  // smallSize: true,
                ),
              ),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Color :',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    TextSpan(
                      text: 'Green',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    TextSpan(
                      text: 'Size :',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    TextSpan(
                      text: '45',
                      style: Theme.of(context).textTheme.bodyLarge,
                    )
                  ]
                )
              ),
              
            ],
          ),
        ),
      ],
    );
  }
}
