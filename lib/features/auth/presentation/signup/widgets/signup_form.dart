import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:store_app/features/auth/controllers/signup/signup_controller.dart';
import 'package:store_app/features/auth/presentation/signup/widgets/terms_and_cond.dart';

import 'package:store_app/utils/constants/sizes.dart';
import 'package:store_app/utils/constants/text_strings.dart';
import 'package:store_app/utils/validators/validation.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({super.key, required this.dark});
  final bool dark;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignupController());
    return Form(
      key: controller.signUpFormKey,

      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  controller: controller.firstName,
                  validator: (value) =>TValidator.validateEmptyText(TTexts.firstName, value),
                  expands: false,
                  decoration: const InputDecoration(
                    label: Text(TTexts.firstName),
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
              const SizedBox(
                width: TSizes.spaceBtwInputFields,
              ),
              Expanded(
                child: TextFormField(
                  validator: (value) =>TValidator.validateEmptyText(TTexts.lastName, value),
                  controller: controller.lastName,
                  decoration: const InputDecoration(
                    label: Text(TTexts.lastName),
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),
          TextFormField(
            validator: (value) =>TValidator.validateEmptyText(TTexts.username, value),
            controller: controller.userName,
            decoration: const InputDecoration(
              label: Text(TTexts.username),
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),
          const SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),
          TextFormField(
            validator: (value) =>TValidator.validateEmail(value),
            controller: controller.email,
            decoration: const InputDecoration(
              label: Text(TTexts.email),
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),
          const SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),
          TextFormField(
            validator: (value) =>TValidator.validatePhoneNumber(value),
            controller: controller.phoneNumber,
            decoration: const InputDecoration(
              label: Text(TTexts.phoneNo),
              prefixIcon: Icon(Iconsax.call),
            ),
          ),
          const SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),
          Obx(
            () => TextFormField(
              validator: (value) =>TValidator.validatePassword(value),
              controller: controller.password,
              obscureText: controller.hidePassword.value,
              decoration: InputDecoration(
            
                label: const Text(TTexts.password),
                prefixIcon: const Icon(Iconsax.password_check),
                suffixIcon: IconButton(
                  icon: Icon(
                    controller.hidePassword.value
                        ? Iconsax.eye_slash
                        : Iconsax.eye,
                  ),
                  onPressed: () {
                    controller.hidePassword.value = !controller.hidePassword.value;
                  },
                ),
              ),
            ),
          ),
          const SizedBox(
            height: TSizes.spaceBtwSections,
          ),
          TermsAndCond(dark: dark),
          const SizedBox(height: TSizes.spaceBtwSections,),
          SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(onPressed: (){
                      controller.signUp();
                    }, child: const Text(TTexts.createAccount))),
        ],
      ),
    );
  }
}
