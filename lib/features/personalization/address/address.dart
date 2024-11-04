

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:store_app/common/widgets/appbar/appbar.dart';
import 'package:store_app/features/personalization/address/add_new_address.dart';
import 'package:store_app/features/personalization/address/widgets/singel_address.dart';
import 'package:store_app/utils/constants/colors.dart';
import 'package:store_app/utils/constants/sizes.dart';


class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.to(()=> const AddNewAddressScreen(),
        
        ),
        backgroundColor: TColors.primary,
        child: const Icon(Iconsax.add, color: TColors.white,),
      ),
      appBar: TAppBar(showBackButton: true
      , title:  Text('Addresses',style: Theme.of(context).textTheme.headlineSmall,)
      ,),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              TSingelAddress(selectedAddress: false,),
              TSingelAddress(selectedAddress: false,),
              TSingelAddress(selectedAddress: false,),
              TSingelAddress(selectedAddress: true,),
              TSingelAddress(selectedAddress: false,),
              TSingelAddress(selectedAddress: false,),
              TSingelAddress(selectedAddress: false,),
            ],
          ),
        ),
      ),
    );
  }
}