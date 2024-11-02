// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';
import 'package:store_app/common/widgets/texts/section_heading.dart';
import 'package:store_app/features/shop/screens/product_details/widgets/bottom_add_to_cart.dart';
import 'package:store_app/features/shop/screens/product_details/widgets/product_attrebutes.dart';
import 'package:store_app/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:store_app/features/shop/screens/product_details/widgets/product_metadata.dart';
import 'package:store_app/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:store_app/utils/constants/sizes.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const TBottomAddToCart() ,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const TProductImageSlider(),
              Padding(
                padding: const EdgeInsets.only(
                    right: TSizes.defaultSpace,
                    left: TSizes.defaultSpace,
                    bottom: TSizes.defaultSpace),
                child: Column(
                  children: [
                    const TRaitngAndShare(),
                    const TProductMetaData(),
                    const TProductAttrebute(),
                    const SizedBox(
                      height: TSizes.spaceBtwSections,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {},
                          child: const Text(
                            'Check Out',
                          )),
                    ),
                    const SizedBox(
                      height: TSizes.spaceBtwSections,
                    ),
                    const TSectionHeading(
                        title: 'Description', showActionButton: false),
                    const SizedBox(
                      height: TSizes.spaceBtwItems,
                    ),
                    const ReadMoreText(
                      'This Is a product description for a Nike Air Jordan Sneackers , its a blue Sneackers , limited edition,variable sizes , for all genders and ages ',
                      trimMode: TrimMode.Line,
                      trimLines: 2,
                      trimCollapsedText: 'Show more',
                      trimExpandedText: 'Show less',
                      moreStyle: TextStyle(
                          fontSize: 14, fontWeight: FontWeight.w800),
                      lessStyle: TextStyle(
                          fontSize: 14, fontWeight: FontWeight.w800),
                    ),
                    const SizedBox(
                      height: TSizes.spaceBtwSections/2,
                    ),
                    const Divider(),
                    const SizedBox(
                      height: TSizes.spaceBtwSections/2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const TSectionHeading(
                            title: 'Reviews (157)', showActionButton: false,),

                            IconButton(onPressed: (){}, icon: const Icon(Iconsax.arrow_right_3),),

                      ],
                    ),
                    const SizedBox(
                      height: TSizes.spaceBtwItems,
                    ),
                  
                  
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
