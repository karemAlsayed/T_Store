

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:store_app/common/widgets/images/t_rounded_image.dart';
import 'package:store_app/utils/constants/image_strings.dart';


class TPromoSlider extends StatelessWidget {
  const TPromoSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only( bottom: 0),
        child: CarouselSlider(
            items: const[
              TRoundedImage(
                imageUrl: TImages.promoBanner1,
              ),
              TRoundedImage(
                imageUrl: TImages.promoBanner2,
              ),
              TRoundedImage(
                imageUrl: TImages.promoBanner3,
              ),
            ],
            options: CarouselOptions(
              
              clipBehavior:  Clip.antiAlias,
              
              enlargeCenterPage: true,
              enlargeFactor:  0.25,
              autoPlay: true,
              disableCenter: true,
              
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration:
                  const Duration(milliseconds: 800),
              viewportFraction: 0.8,
    
            )));
  }
}
