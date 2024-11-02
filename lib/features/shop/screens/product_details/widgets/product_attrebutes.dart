import 'package:flutter/material.dart';
import 'package:store_app/common/widgets/chips/choice_chips.dart';
import 'package:store_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:store_app/common/widgets/texts/product_price.dart';
import 'package:store_app/common/widgets/texts/product_title_text.dart';
import 'package:store_app/common/widgets/texts/section_heading.dart';
import 'package:store_app/utils/constants/colors.dart';
import 'package:store_app/utils/constants/sizes.dart';
import 'package:store_app/utils/helpers/helper_functions.dart';

class TProductAttrebute extends StatelessWidget {
  const TProductAttrebute({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        TRoundedContainer(
          padding: const EdgeInsets.all(TSizes.md),
          backgroundColor: dark ? TColors.darkGrey : TColors.grey,
          child: Column(
            children: [
              Row(
                children: [
                  const TSectionHeading(
                    title: 'Variation',
                    showActionButton: false,
                  ),
                  const SizedBox(
                    width: TSizes.spaceBtwSections,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const TProductTitleText(
                            title: 'Price :',
                            smallSize: true,
                          ),
                          const SizedBox(
                            width: TSizes.spaceBtwItems,
                          ),
                          const TProductPriceText(
                            price: '40',
                          ),
                          const SizedBox(
                            width: TSizes.spaceBtwItems,
                          ),
                          Text(
                            '\$ 53',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const TProductTitleText(
                            title: 'Stock :',
                            smallSize: true,
                          ),
                          const SizedBox(
                            width: TSizes.spaceBtwItems,
                          ),
                          Text(
                            'In Stock',
                            style: Theme.of(context).textTheme.titleMedium,
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
        const SizedBox(
          height: TSizes.spaceBtwSections,
        ),
        Column(
          children: [
            const TSectionHeading(
              title: 'Colors',
              showActionButton: false,
            ),
            const SizedBox(height: TSizes.spaceBtwItems / 2),
            Wrap(
              children: [
                TChoiceChip(
              text: 'Red',
              selected: true,
              onSelected: (value) {},
            ),
            TChoiceChip(
              text: 'Blue',
              selected: false,
              onSelected: (value) {},
            ),
            TChoiceChip(
              text: 'Green',
              selected: false,
              onSelected: (value) {},
            ),
            
              ],
            )
            

          ],
        ),
        Column(
          children: [
            const TSectionHeading(
              title: 'Sizes',
              showActionButton: false,
            ),
            const SizedBox(height: TSizes.spaceBtwItems / 2),
            Wrap
            (
              spacing: 8,
              children: [
              TChoiceChip(
              text: '43',
              selected: true,
              onSelected: (value) {},
            ),
            TChoiceChip(
              text: '44',
              selected: false,
              onSelected: (value) {},
            ),
            TChoiceChip(
              text: '45',
              selected: false,
              onSelected: (value) {},
            ),
            ],)
            
          ],
        )
      ],
    );
  }
}
