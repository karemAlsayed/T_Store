import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store_app/data/repos/auth_repo.dart';
import 'package:store_app/data/repos/user_repo.dart';
import 'package:store_app/features/auth/models/user_model.dart';
import 'package:store_app/features/auth/presentation/signup/verify_email.dart';
import 'package:store_app/utils/constants/image_strings.dart';
import 'package:store_app/utils/helpers/network_manager.dart';
import 'package:store_app/utils/popups/full_screen_loader.dart';
import 'package:store_app/utils/popups/loaders.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();
  final hidePassword = true.obs;
  final privacyPolicy = false.obs;
  final email = TextEditingController();
  final password = TextEditingController();
  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final phoneNumber = TextEditingController();
  final userName = TextEditingController();

  GlobalKey<FormState> signUpFormKey = GlobalKey<FormState>();
  void signUp() async {
    try {
      TFullScreenLoader.openLoadingDialog('Signing Up', TImages.acerlogo);
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        TFullScreenLoader.stopLoading();
        TLoaders.warningSnackBar(
            title: 'No internet connection',
            message: 'Please check your internet connection and try again.');
        return;
      }
      if (!signUpFormKey.currentState!.validate()) {

        TFullScreenLoader.stopLoading();
        


        return;
      }
      if (!privacyPolicy.value) {
        TLoaders.warningSnackBar(
            title: 'Warning',
            message: 'Please accept the terms and conditions.');
        return;
      }
      final userCredential = await AuthenticationRepository.instance
          .registerWithEmailAndPassword(
              email.text.trim(), password.text.trim());

      final newUser = UserModel(
          id: userCredential.user!.id,
          firstName: firstName.text.trim(),
          lastName: lastName.text.trim(),
          username: userName.text.trim(),
          email: email.text.trim(),
          phoneNumber: phoneNumber.text.trim(),
          profilePicture: '');

          final userRepositry = Get.put(UserRepositry());

      await userRepositry.saveUserRecord(newUser);

      TFullScreenLoader.stopLoading();
      TLoaders.successSnackBar(
          title: 'woohoo!', message: 'Account created successfully!,Verify your email to continue');
          Get.to(()=>const VerifyEmailScreen());
    } catch (e) {
      TFullScreenLoader.stopLoading();
      TLoaders.errorSnackBar(title: 'Error', message: e.toString());
    } 
  }
}
