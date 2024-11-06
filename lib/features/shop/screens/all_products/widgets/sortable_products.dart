
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:store_app/common/widgets/layouts/grid_layout.dart';
import 'package:store_app/common/widgets/products/product_card_vertical.dart';
import 'package:store_app/utils/constants/sizes.dart';

class TSortableProducts extends StatelessWidget {
  const TSortableProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropdownButtonFormField(
            items: [
              'Name',
              'High to Low',
              'Low to High',
              'Sales',
              'New Arrivals',
              'Popularity',
            ].map((option) {
              return DropdownMenuItem(
                value: option,
                child: Text(option),
              );
            }).toList(),
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.sort),
            ),
            onChanged: (_) {}),
        const SizedBox(
          height: TSizes.spaceBtwSections,
        ),
        TGridLayout(
            itemCount: 10,
            itemBuilder: (_, index) => const TProductCardVertical()),
      ],
    );
  }
}
