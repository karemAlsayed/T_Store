import 'package:flutter/material.dart';
import 'package:store_app/common/widgets/appbar/appbar.dart';
import 'package:store_app/common/widgets/images/t_rounded_image.dart';
import 'package:store_app/common/widgets/products/product_card_horizontal.dart';
import 'package:store_app/common/widgets/texts/section_heading.dart';
import 'package:store_app/utils/constants/image_strings.dart';
import 'package:store_app/utils/constants/sizes.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        title: Text(
          'Sports',
        ),
        showBackButton: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:  const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children:  [
              const TRoundedImage(
                imageUrl: TImages.promoBanner3,
                applyImageRadius: true,
                height: null,
                width: double.infinity,
              ),
              const SizedBox(height: TSizes.spaceBtwSections,),
              Column(
                children: [
                  TSectionHeading(title: 'Sports Sneakers',onPressed: () {
                    
                  },),
                  const SizedBox(height: TSizes.spaceBtwItems/2,),
                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      separatorBuilder: (_, __) => const SizedBox(width: TSizes.spaceBtwItems),
                      shrinkWrap: true,
                      itemCount: 4,
                      
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (_, index) {
                        return const TProductCardHorizontal();
                      },
                      ),
                  ),


                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
