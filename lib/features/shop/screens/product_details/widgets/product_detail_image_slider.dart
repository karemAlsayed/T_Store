
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:store_app/common/widgets/appbar/appbar.dart';
import 'package:store_app/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:store_app/common/widgets/icons/t_circular_icon.dart';
import 'package:store_app/common/widgets/images/t_rounded_image.dart';
import 'package:store_app/utils/constants/colors.dart';
import 'package:store_app/utils/constants/image_strings.dart';
import 'package:store_app/utils/constants/sizes.dart';
import 'package:store_app/utils/helpers/helper_functions.dart';

class TProductImageSlider extends StatelessWidget {
  const TProductImageSlider({
    super.key,
    
  });

  

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return CurvedEdgeWidget(
      child: Container(
          color: dark ? TColors.darkGrey : TColors.light,
          padding: const EdgeInsets.all(0),
          child: Stack(
            children: [
              const SizedBox(
                  height: 400,
                  child: Padding(
                    padding:
                        EdgeInsets.all(TSizes.productImageRadius * 2.5),
                    child: Center(
                        child: Image(
                      image: AssetImage(TImages.productImage1),
                    )),
                  )),
              Positioned(
                right: 0,
                bottom: 23,
                left: TSizes.defaultSpace,
                child: SizedBox(
                  height: 80,
                  child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    physics: const AlwaysScrollableScrollPhysics(),
                      itemBuilder: (_, __) => TRoundedImage(
                            width: 80,

                            backgroundColor:
                                dark ? TColors.dark : TColors.white,
                            imageUrl: TImages.productImage20,
                            border: Border.all(
                                color:
                                    dark ? TColors.white : TColors.primary),
                            padding: const EdgeInsets.all(TSizes.sm),
                          ),
                      separatorBuilder: (_, __) =>
                          const SizedBox(width: TSizes.spaceBtwItems/3),
                      itemCount: 5),
                ),
              ),
              TAppBar(
                showBackButton: true,
                actions: [
                  TCircularIcon(icon: Iconsax.heart5,color: Colors.red, onPressed: () {})
                ],
    
              )
            ],
          )),
    );
  }
}
