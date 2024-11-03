import 'package:flutter/material.dart';
import 'package:store_app/common/widgets/appbar/appbar.dart';
import 'package:store_app/features/shop/screens/product_reviews/widgets/overall_rating.dart';
import 'package:store_app/features/shop/screens/product_reviews/widgets/rating_bar_indecator.dart';
import 'package:store_app/features/shop/screens/product_reviews/widgets/user_review_card.dart';
import 'package:store_app/utils/constants/sizes.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        title: Text('Reviews & Ratings'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Reviews & Ratings are verified by our team. If you have any feedback or suggestions, please contact us.',
                ),
                const SizedBox(
                  height: TSizes.spaceBtwItems,
                ),
                const TOverAllRating(),
                const TRatingBarIndecator( rating: 4.5,),
                Text('805 reviews',style: Theme.of(context).textTheme.bodySmall,),
                const SizedBox(
                  height: TSizes.spaceBtwSections,
                ),
                const UserReviewCard(
                  
                ),
                const UserReviewCard(),
                const UserReviewCard(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
