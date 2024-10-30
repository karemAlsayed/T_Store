import 'package:flutter/material.dart';

import 'package:store_app/common/widgets/appbar/appbar.dart';

import 'package:store_app/common/widgets/texts/section_heading.dart';
import 'package:store_app/features/personalization/profile/widgets/profile_menu.dart';
import 'package:store_app/utils/constants/colors.dart';
import 'package:store_app/utils/constants/image_strings.dart';
import 'package:store_app/utils/constants/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text(
          'Profile',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        showBackButton: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const CircleAvatar(
                      radius: 45,
                      backgroundImage: AssetImage(TImages.user),
                    ),
                    // const TCircularIMage(image: TImages.user, width: 80, height: 80),
                    TextButton(
                        onPressed: () {},
                        child: const Text('Change Profile Picture')),
                  ],
                ),
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems / 2,
              ),
              const Divider(),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              const TSectionHeading(
                title: 'Profile Information',
                showActionButton: false,
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              const TProfileMenu(
                title: 'Name',
                value: 'kareem',
              ),
              const TProfileMenu(
                title: 'Username',
                value: 'kareem_alsayed',
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              const Divider(),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              const TSectionHeading(
                title: 'Personal Information',
                showActionButton: false,
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              const TProfileMenu(
                title: 'User ID',
                value: '512562',
              ),
              const TProfileMenu(
                title: 'E-Mail',
                value: 'kareem@gmail.com',
              ),
              const TProfileMenu(
                title: 'Phone Number',
                value: '+20123456789',
              ),
              const TProfileMenu(
                title: 'Gender',
                value: 'Male',
              ),
              const TProfileMenu(
                title: 'Date of Birth',
                value: '10 March 2000',
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              const Divider(),
              

              Center(
                  child: TextButton(
                onPressed: () {},
                child: Text('Close Account',
                    style: Theme.of(context).textTheme.bodyLarge!.apply(
                        color: Colors.red,)),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
