import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store_app/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:store_app/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:store_app/common/widgets/images/t_promo_slider.dart';
import 'package:store_app/common/widgets/layouts/grid_layout.dart';

import 'package:store_app/common/widgets/products/product_card_vertical.dart';
import 'package:store_app/common/widgets/texts/section_heading.dart';
import 'package:store_app/features/shop/screens/all_products/all_products.dart';
import 'package:store_app/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:store_app/features/shop/screens/home/widgets/home_categories.dart';
import 'package:store_app/utils/constants/colors.dart';

import 'package:store_app/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: TColors.primary, // Custom color for SafeArea
            child: SafeArea(
              top: true,
              bottom: false,
              child:
                  Container(), // Empty container to apply color only to SafeArea
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const TPrimaryHeaderContainer(
                    child: Column(
                      children: [
                        THomeAppbar(),
                        SizedBox(
                          height: TSizes.spaceBtwSections,
                        ),
                        TSearchContainer(
                          text: 'Search in TStore',
                        ),
                        SizedBox(
                          height: TSizes.spaceBtwSections,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: TSizes.defaultSpace),
                          child: Column(
                            children: [
                              TSectionHeading(
                                title: 'Popular Categories',
                                showActionButton: false,
                                textColor: TColors.white,
                              ),
                              SizedBox(
                                height: TSizes.spaceBtwItems,
                              ),
                              THomeCategories(),
                              SizedBox(
                                height: TSizes.spaceBtwSections,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(TSizes.defaultSpace),
                    child: Column(
                      children: [
                        const TPromoSlider(),
                        const SizedBox(
                          height: TSizes.spaceBtwSections * 1.5,
                        ),
                        TSectionHeading(
                          title: 'Trending Products',
                          onPressed: () {
                            Get.to(
                              () => const AllProductsScreen(),
                            );
                          },
                        ),
                        const SizedBox(
                          height: TSizes.spaceBtwItems,
                        ),
                        TGridLayout(
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return const TProductCardVertical();
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
