
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:store_app/utils/constants/colors.dart';

class TRatingBarIndecator extends StatelessWidget {
  const TRatingBarIndecator({
    super.key, required this.rating,
  });

  final double rating;

  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
      itemBuilder: (
        _,
        __,
      ) =>
          const Icon(
        Icons.star,
        color: TColors.primary,
      ),
      unratedColor: TColors.grey,
      itemSize: 20.0,
      rating: rating,
    );
  }
}
