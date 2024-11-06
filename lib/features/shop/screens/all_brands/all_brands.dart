import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store_app/common/widgets/appbar/appbar.dart';
import 'package:store_app/common/widgets/images/t_brand_card.dart';
import 'package:store_app/common/widgets/layouts/grid_layout.dart';
import 'package:store_app/common/widgets/texts/section_heading.dart';
import 'package:store_app/features/shop/screens/all_brands/brands_product.dart';
import 'package:store_app/utils/constants/sizes.dart';

class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        title: Text(
          'All Brands',
        ),
        showBackButton: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              const TSectionHeading(
                title: 'Brands',
                showActionButton: false,
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              TGridLayout(
                itemCount: 10,
                mainAxisExtent: 80,
                itemBuilder: (_, index) =>  TBrandCard(showBorder: true,onTap: () {
                  Get.to( () => const BrandsProduct());
                },),
              )
            ],
          ),
        ),
      ),
    );
  }
}
