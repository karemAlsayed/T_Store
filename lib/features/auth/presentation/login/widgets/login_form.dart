import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:flutter/material.dart';
import 'package:store_app/navigation_menu.dart';
import 'package:store_app/utils/constants/sizes.dart';
import 'package:store_app/utils/constants/text_strings.dart';
import 'package:store_app/features/auth/presentation/signup/signup.dart';
import 'package:store_app/features/auth/presentation/password_config/forget_password.dart';

// AuthController to manage authentication logic
class AuthController extends GetxController {
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  var rememberMe = false.obs;

  // Handle Login Logic
  void login() {
    if (loginFormKey.currentState!.validate()) {
      // Perform authentication logic (e.g., API call)
      Get.to(() => const NavigationMenu());
    } else {
      Get.snackbar('Error', 'Please fix the errors before proceeding',
          snackPosition: SnackPosition.BOTTOM);
    }
  }

  // Toggle Remember Me checkbox
  void toggleRememberMe(bool? value) {
    rememberMe.value = value ?? false;
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}

class TLoginForm extends StatelessWidget {
  const TLoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    final AuthController controller = Get.put(AuthController());

    return Form(
      key: controller.loginFormKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
        child: Column(
          children: [
            _buildEmailField(controller),
            const SizedBox(height: TSizes.spaceBtwInputFields),
            const PasswordField(), // Updated Password Field
            const SizedBox(height: TSizes.spaceBtwInputFields / 2),
            _buildRememberMeAndForgetPassword(controller),
            const SizedBox(height: TSizes.spaceBtwSections),
            _buildSignInButton(controller),
            const SizedBox(height: TSizes.spaceBtwItems),
            _buildSignUpButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildEmailField(AuthController controller) {
    return TextFormField(
      controller: controller.emailController,
      decoration: const InputDecoration(
        label: Text(TTexts.email),
        prefixIcon: Icon(Iconsax.direct_right),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your email';
        }
        if (!value.contains('@')) {
          return 'Please enter a valid email';
        }
        return null;
      },
    );
  }

  Widget _buildRememberMeAndForgetPassword(AuthController controller) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Obx(
          () => Row(
            children: [
              Checkbox(
                value: controller.rememberMe.value,
                onChanged: controller.toggleRememberMe,
              ),
              const Text(TTexts.rememberMe),
            ],
          ),
        ),
        TextButton(
          onPressed: () {
            Get.to(() => const ForgetPassword());
          },
          child: const Text(TTexts.forgetPassword),
        ),
      ],
    );
  }

  Widget _buildSignInButton(AuthController controller) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          controller.login(); // Firebase login
        },
        child: const Text(TTexts.signIn),
      ),
    );
  }

  Widget _buildSignUpButton() {
    return SizedBox(
      width: double.infinity,
      child: OutlinedButton(
        onPressed: () {
          Get.to(() => const SignUpScreen());
        },
        child: const Text(TTexts.createAccount),
      ),
    );
  }
}

class PasswordField extends StatefulWidget {
  const PasswordField({super.key});

  @override
  _PasswordFieldState createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _obscureText = true;

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        label: const Text(TTexts.password),
        prefixIcon: const Icon(Iconsax.password_check),
        suffixIcon: IconButton(
          icon: Icon(
            _obscureText ? Iconsax.eye_slash : Iconsax.eye,
          ),
          onPressed: _togglePasswordVisibility,
        ),
      ),
      obscureText: _obscureText,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your password';
        }
        if (value.length < 6) {
          return 'Password must be at least 6 characters';
        }
        return null;
      },
    );
  }
}
