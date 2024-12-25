


import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:store_app/features/personalization/controllers/user_controller.dart';

import 'package:store_app/utils/constants/colors.dart';
import 'package:store_app/utils/constants/image_strings.dart';

class TUserProfileTile extends StatelessWidget {
  const TUserProfileTile({
    super.key, this.onTap,
  });

  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final controller = UserController.instance;
    return ListTile(
      leading: const CircleAvatar(
        radius: 25,

        backgroundColor: TColors.primary,
        child:Image(image: AssetImage(TImages.user),),
      ),
    //  leading: const TCircularIMage(
    //    width: 50,
    //    height: 50,
    //    padding: 0,
       
    //    image:TImages.user , isNetworkImage: false),
     title: Text(controller.user.value.fullName,style:  Theme.of(context).textTheme.headlineSmall!.apply(color: TColors.white),),
     subtitle: Text(controller.user.value.email,style: Theme.of(context).textTheme.bodyMedium!.apply(color: TColors.white),),
     trailing:  IconButton(onPressed: (){},icon: const Icon(Iconsax.edit),color: TColors.white,),
                    onTap: onTap,
                    );
  }
}