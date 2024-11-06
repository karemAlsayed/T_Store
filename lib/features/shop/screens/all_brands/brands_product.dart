

import 'package:flutter/material.dart';
import 'package:store_app/common/widgets/appbar/appbar.dart';
import 'package:store_app/common/widgets/images/t_brand_card.dart';
import 'package:store_app/features/shop/screens/all_products/widgets/sortable_products.dart';
import 'package:store_app/utils/constants/sizes.dart';

class BrandsProduct extends StatelessWidget {
  const BrandsProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: TAppBar(title: Text('Nike'),),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            TBrandCard(showBorder: true,),
            SizedBox(height: TSizes.spaceBtwSections,),
            TSortableProducts()
          ],
        ),
      ),
    );
  }
}