import 'package:flutter/material.dart';
import 'package:store_app/common/widgets/appbar/appbar.dart';
import 'package:store_app/features/shop/screens/all_products/widgets/sortable_products.dart';
import 'package:store_app/utils/constants/sizes.dart';

class AllProductsScreen extends StatelessWidget {
  const AllProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: TAppBar(
        title: Text(
          'Popular Products',
        ),
        showBackButton: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: TSortableProducts(),
        ),
      ),
    );
  }
}
