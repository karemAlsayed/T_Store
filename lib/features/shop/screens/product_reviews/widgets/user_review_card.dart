

import 'package:flutter/material.dart';

import 'package:readmore/readmore.dart';
import 'package:store_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:store_app/features/shop/screens/product_reviews/widgets/rating_bar_indecator.dart';
import 'package:store_app/utils/constants/colors.dart';
import 'package:store_app/utils/constants/image_strings.dart';
import 'package:store_app/utils/constants/sizes.dart';
import 'package:store_app/utils/helpers/helper_functions.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(backgroundImage:AssetImage(TImages.userProfileImage1) ,),
                const SizedBox(
                  width: TSizes.spaceBtwItems / 2,
                ),
                Text(
                  'John Doe',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ],
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
            
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems,),
        Row(
          children: [
            const TRatingBarIndecator(rating: 4),
            const SizedBox(width: TSizes.spaceBtwItems,),
            Text('01 Nov 2024',style: Theme.of(context).textTheme.bodyMedium,),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems,),
        const ReadMoreText(
          'it is a great product ,the shipping and delevery are awesome , the size was a lettel bit small but every thing else was great , thank you',
          trimLines: 2,
          colorClickableText: TColors.primary,
          trimMode: TrimMode.Line,
          trimCollapsedText: 'Show more',
          trimExpandedText: 'Show less',
          
        ),
        const SizedBox(height: TSizes.spaceBtwItems,),
        TRoundedContainer(
          backgroundColor: dark ? TColors.darkerGrey : TColors.grey,
          child: 
          Padding(
            padding: const EdgeInsets.all(TSizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                    "T's Store",style:  Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                    "02 Nov 2024",style:  Theme.of(context).textTheme.bodyMedium,
                    ),
                

                  ],
                ),
                const SizedBox(height: TSizes.spaceBtwItems,),
                const ReadMoreText(
                  'it is a great product ,the shipping and delevery are awesome , the size was a lettel bit small but every thing else was great , thank you',
                  trimLines: 2,
                  colorClickableText: TColors.primary,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: 'Show more',
                  trimExpandedText: 'Show less',
                ),
                
                
              ],
            ),
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwSections,),
        

      ],
    );
  }
}