import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:store_app/features/auth/controllers/login/login_controller.dart';
import 'package:store_app/features/auth/presentation/password_config/forget_password.dart';
import 'package:store_app/features/auth/presentation/signup/signup.dart';

import 'package:store_app/utils/constants/sizes.dart';
import 'package:store_app/utils/constants/text_strings.dart';
import 'package:store_app/utils/validators/validation.dart';

class TLoginForm extends StatelessWidget {
  const TLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    return Form(
        key: controller.loginFormKey,
        child: Padding(
          padding:
              const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
          child: Column(
            children: [
              TextFormField(
                controller: controller.email,
                validator: (value) => TValidator.validateEmail(
                  value,
                ),
                decoration: const InputDecoration(
                  label: Text(TTexts.email),
                  prefixIcon: Icon(Iconsax.direct_right),
                ),
              ),
              const SizedBox(
                height: TSizes.spaceBtwInputFields,
              ),
              Obx(
                () => TextFormField(
                  controller: controller.password,
                  validator: (value) =>
                      TValidator.validateEmptyText(TTexts.password, value),
                  obscureText: controller.hidePassword.value,
                  decoration: InputDecoration(
                    label: const Text(TTexts.password),
                    prefixIcon: const Icon(Iconsax.password_check),
                    suffixIcon: IconButton(
                        onPressed: () => controller.hidePassword.value =
                            !controller.hidePassword.value,
                        icon: controller.hidePassword.value
                            ? const Icon(Iconsax.eye)
                            : const Icon(Iconsax.eye_slash)),
                  ),
                ),
              ),
              const SizedBox(
                height: TSizes.spaceBtwInputFields / 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Obx(
                          () => Checkbox(
                              value: controller.rememberMe.value,
                              onChanged: (value) {
                                controller.rememberMe.value =
                                    !controller.rememberMe.value;
                              })),
                      const Text(TTexts.rememberMe),
                    ],
                  ),
                  TextButton(
                      onPressed: () {
                        Get.to(() => const ForgetPassword());
                      },
                      child: const Text(TTexts.forgetPassword)),
                ],
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {
                        controller.emailAndPasswordSignIn();
                      },
                      child: const Text(TTexts.signIn))),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                      onPressed: () {
                        Get.to(() => const SignUpScreen());
                      },
                      child: const Text(TTexts.createAccount))),
            ],
          ),
        ));
  }
}
