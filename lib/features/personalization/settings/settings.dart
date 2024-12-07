import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:panara_dialogs/panara_dialogs.dart';
import 'package:store_app/common/widgets/appbar/appbar.dart';
import 'package:store_app/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:store_app/common/widgets/list_tiles/setting_menu_tile.dart';
import 'package:store_app/common/widgets/list_tiles/user_profile_tile.dart';
import 'package:store_app/common/widgets/texts/section_heading.dart';
import 'package:store_app/data/repos/auth_repo.dart';
import 'package:store_app/features/auth/controllers/forget_password/forget_pass_controller.dart';
import 'package:store_app/features/personalization/address/address.dart';
import 'package:store_app/features/personalization/profile/profile.dart';
import 'package:store_app/features/shop/screens/cart/cart.dart';
import 'package:store_app/features/shop/screens/orders/order.dart';
import 'package:store_app/utils/constants/colors.dart';
import 'package:store_app/utils/constants/sizes.dart';

class Settingsscreen extends StatelessWidget {
  const Settingsscreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ForgetPasswordController());
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
                  TPrimaryHeaderContainer(
                      child: Column(
                    children: [
                      TAppBar(
                        title: Text(
                          'Account',
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium!
                              .apply(color: TColors.white),
                        ),
                        showBackButton: false,
                      ),
                      const SizedBox(
                        height: TSizes.spaceBtwSections,
                      ),
                      TUserProfileTile(
                        onTap: () {
                          Get.to(() => const ProfileScreen());
                        },
                      ),
                      const SizedBox(
                        height: TSizes.spaceBtwSections,
                      ),
                    ],
                  )),
                  Padding(
                      padding: const EdgeInsets.all(TSizes.defaultSpace),
                      child: Column(
                        children: [
                          const TSectionHeading(
                            title: 'Account Settings',
                            showActionButton: false,
                          ),
                          const SizedBox(
                            height: TSizes.spaceBtwItems,
                          ),
                          TSettingMenuTile(
                            icon: Iconsax.safe_home,
                            title: 'My Address',
                            subtitle: 'Set your default address',
                            onTap: () {
                              Get.to(() => const UserAddressScreen());
                            },
                          ),
                          TSettingMenuTile(
                            icon: Iconsax.shopping_cart,
                            title: 'My Cart',
                            subtitle: 'Add, remove products from cart',
                            onTap: () {
                              Get.to(() => const CartScreen());
                            },
                          ),
                          TSettingMenuTile(
                            icon: Iconsax.bag_tick,
                            title: 'My Orders',
                            subtitle: 'Manage your orders',
                            onTap: () {
                              Get.to(() => const OrderScreen());
                            },
                          ),
                          const TSettingMenuTile(
                            icon: Iconsax.bank,
                            title: 'Bank Account',
                            subtitle: 'Withdraw money to bank account',
                          ),
                          const TSettingMenuTile(
                            icon: Iconsax.discount_shape,
                            title: 'My Copuns',
                            subtitle: 'Your coupon codes',
                          ),
                          const TSettingMenuTile(
                            icon: Iconsax.notification,
                            title: 'Notifications',
                            subtitle: 'Manage your notifications',
                          ),
                          const TSettingMenuTile(
                            icon: Iconsax.security_card,
                            title: 'Account Privacy',
                            subtitle: 'Manage your account privacy',
                          ),
                          const SizedBox(
                            height: TSizes.spaceBtwSections,
                          ),
                          const TSectionHeading(
                            title: 'General Settings',
                            showActionButton: false,
                          ),
                          const SizedBox(
                            height: TSizes.spaceBtwItems,
                          ),
                          const TSettingMenuTile(
                            icon: Iconsax.document_upload,
                            title: 'Load Data',
                            subtitle: 'Upload your data to server',
                          ),
                          TSettingMenuTile(
                            icon: Iconsax.location,
                            title: 'Geolocation',
                            subtitle:
                                'Set Recommendations based on your location',
                            trailing:
                                Switch(value: false, onChanged: (value) {}),
                          ),
                          TSettingMenuTile(
                            icon: Iconsax.security_user,
                            title: 'Safe Mode',
                            subtitle:
                                'Search results will be filtered by safe mode',
                            trailing:
                                Switch(value: false, onChanged: (value) {}),
                          ),
                          TSettingMenuTile(
                            icon: Iconsax.image,
                            title: 'HD Image Quality',
                            subtitle: 'The image quality will be high',
                            trailing:
                                Switch(value: false, onChanged: (value) {}),
                          ),
                          const SizedBox(
                            height: TSizes.spaceBtwSections,
                          ),
                          Center(
                              child: TextButton(
                            onPressed: () {
                              // AuthenticationRepository.instance.logout();
                              PanaraConfirmDialog.show(
                                context,
                                title: "Logout",
                                noImage: true,
                                
                                
                                
                                message: "Are you sure you want to logout?",
                                confirmButtonText: "Logout",
                                cancelButtonText: "Cancel",
                                onTapCancel: () {
                                  Navigator.pop(context);
                                },
                                onTapConfirm: () {
                                  Navigator.pop(context);

                                  ForgetPasswordController.instance.logout();
                                
                                },
                                panaraDialogType: PanaraDialogType.custom,
                                
                              );
                            },
                            child: Text('Logout',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .apply(
                                      color: Colors.red,
                                    )),
                          ))
                        ],
                      ))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
