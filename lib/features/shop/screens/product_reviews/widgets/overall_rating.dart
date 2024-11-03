


import 'package:flutter/material.dart';
import 'package:store_app/features/shop/screens/product_reviews/widgets/rating_progress_indecator.dart';

class TOverAllRating extends StatelessWidget {
  const TOverAllRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 3, child: Text('4.8',style: Theme.of(context).textTheme.displayLarge,)),
        const Expanded(
          flex: 7,
          child: Column(
            children: [
              TRatingProgressIndecator(
                text: '5',
                value: 0.8,
              ),
              TRatingProgressIndecator(
                text: '4',
                value: 0.5,
              ),
              TRatingProgressIndecator(
                text: '3',
                value: 0.3,
              ),
              TRatingProgressIndecator(
                text: '2',
                value: 0.1,
              ),
              TRatingProgressIndecator(
                text: '1',
                value: 0.1,
              ),
            ],
          ),
        )
    
      ],
    );
  }
}