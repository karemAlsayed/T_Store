



import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:store_app/features/auth/controllers/forget_password/forget_pass_controller.dart';
import 'package:store_app/utils/constants/sizes.dart';
import 'package:store_app/utils/constants/text_strings.dart';
import 'package:store_app/utils/validators/validation.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ForgetPasswordController());
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Text(TTexts.forgetPasswordTitle,
              style: Theme.of(context).textTheme.headlineMedium,
            ),

            const SizedBox(height: TSizes.spaceBtwItems,),

            Text(TTexts.forgetPasswordSubTitle, 
              style: Theme.of(context).textTheme.labelMedium,
            ),

            const SizedBox(height: TSizes.spaceBtwSections*2,),

            Form(
              key: controller.forgetPasswordFormKey,
              child: TextFormField(
                controller: controller.email,
                validator: (value) => TValidator.validateEmail(value),
                decoration:  const InputDecoration(
                  labelText: TTexts.email,
                  prefixIcon: Icon(Iconsax.direct_right),
                ),
              ),
            ),

            const SizedBox(height: TSizes.spaceBtwSections,),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: (){
                  controller.sendPasswordResetEmail();
                },
                child: const Text(TTexts.submit),
              ),
            ),

          ],
        ),
      ),

    );
  }
}