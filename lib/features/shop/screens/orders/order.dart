

import 'package:flutter/material.dart';
import 'package:store_app/common/widgets/appbar/appbar.dart';
import 'package:store_app/features/shop/screens/orders/widgets/order_list.dart';
import 'package:store_app/utils/constants/sizes.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title:  Text('My Orders',style: Theme.of(context).textTheme.headlineSmall,),
        showBackButton: true,

      ),
      body: Padding(
        padding:  const EdgeInsets.all(TSizes.defaultSpace),
        child: TOrderListItem(),
      ),
    );
  }
}