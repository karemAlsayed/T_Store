import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:store_app/common/widgets/appbar/appbar.dart';
import 'package:store_app/common/widgets/appbar/tappbar.dart';
import 'package:store_app/common/widgets/cart_counter_icon/cart_counter_icon.dart';
import 'package:store_app/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:store_app/common/widgets/images/t_brand_card.dart';
import 'package:store_app/common/widgets/layouts/grid_layout.dart';
import 'package:store_app/common/widgets/texts/section_heading.dart';
import 'package:store_app/features/shop/screens/cart/cart.dart';
import 'package:store_app/features/shop/screens/store/widgets/category_tab.dart';
import 'package:store_app/utils/constants/colors.dart';
import 'package:store_app/utils/constants/sizes.dart';
import 'package:store_app/utils/helpers/helper_functions.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: TAppBar(
          title: Text(
            'Store',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          showBackButton: false,
          actions: [
            TCartCounterIcon(onPressed: () {Get.to(() => const CartScreen());}),
          ],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                  automaticallyImplyLeading: false,
                  floating: true,
                  pinned: true,
                  backgroundColor: dark ? TColors.black : TColors.white,
                  expandedHeight: 440,
                  flexibleSpace: Padding(
                    padding: const EdgeInsets.all(TSizes.defaultSpace),
                    child: ListView(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        const SizedBox(
                          height: TSizes.spaceBtwItems,
                        ),
                        const TSearchContainer(
                          text: 'Search in TStore',
                          showBorder: true,
                          showBackground: false,
                          padding: EdgeInsets.zero,
                        ),
                        const SizedBox(
                          height: TSizes.spaceBtwSections,
                        ),
                        TSectionHeading(
                          title: 'Feature Brands',
                          showActionButton: true,
                          onPressed: () {},
                        ),
                        const SizedBox(
                          height: TSizes.spaceBtwItems / 1.5,
                        ),
                        TGridLayout(
                            itemCount: 4,
                            mainAxisExtent: 80,
                            itemBuilder: (context, index) {
                              return const TBrandCard(
                                showBorder: true,
                              );
                            })
                      ],
                    ),
                  ),
                  bottom: const TTabBar(tabs: [
                    Tab(
                        child: Text(
                      'Sports',
                    )),
                    Tab(
                      child: Text('Furniture'),
                    ),
                    Tab(
                      child: Text('Electronics'),
                    ),
                    Tab(
                      child: Text('Shoes'),
                    ),
                    Tab(
                      child: Text('Clothes'),
                    ),
                    Tab(
                      child: Text('Cosmetics'),
                    )
                  ])),
            ];
          },
          body:  const TabBarView(
            children: [
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
            ]
            ),
        ),
      ),
    );
  }
}
