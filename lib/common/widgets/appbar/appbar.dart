import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:store_app/utils/constants/colors.dart';
import 'package:store_app/utils/constants/sizes.dart';
import 'package:store_app/utils/device/device_utility.dart';
import 'package:store_app/utils/helpers/helper_functions.dart';

class TAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TAppBar(
      {super.key,
       this.title,
      this.actions,
      this.showBackButton= true,
      this.leadingIcon,
      this.onLeadingPressed});

  final Widget? title;
  final List<Widget>? actions;
  final bool showBackButton;
  final IconData? leadingIcon;
  final VoidCallback? onLeadingPressed;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Padding(
      
      padding: const EdgeInsets.symmetric(horizontal: TSizes.md),
      child: AppBar(

        
        automaticallyImplyLeading: false,
        title: title,
        actions: actions,
        leading: showBackButton
            ? IconButton(
                onPressed: () => Get.back(),
                icon:  Icon(Iconsax.arrow_left ,color: dark ? TColors.white : TColors.black,),
              )
            :leadingIcon!=null? IconButton(onPressed: onLeadingPressed, icon: Icon(leadingIcon)):null,

      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}
