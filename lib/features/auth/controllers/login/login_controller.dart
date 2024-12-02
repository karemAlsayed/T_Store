import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:store_app/data/repos/auth_repo.dart';
import 'package:store_app/utils/constants/image_strings.dart';
import 'package:store_app/utils/helpers/network_manager.dart';
import 'package:store_app/utils/popups/full_screen_loader.dart';
import 'package:store_app/utils/popups/loaders.dart';

class LoginController extends GetxController {
  // static LoginController get instance => Get.find();

  final locaStorage = GetStorage();
  final rememberMe = false.obs;
  final hidePassword = true.obs;

  final email = TextEditingController();
  final password = TextEditingController();
  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  @override
  void onInit() {
    email.text = locaStorage.read('REMEMBER_ME_EMAIL') ?? '';
    
    super.onInit();
  }

  Future<void> emailAndPasswordSignIn() async {
    try {
      TFullScreenLoader.openLoadingDialog('', TImages.registerIllustration);

      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        TFullScreenLoader.stopLoading();
        TLoaders.warningSnackBar(
          title: 'No internet connection',
          message: 'Please check your internet connection and try again.',
        );
        return;
      }
      if (!loginFormKey.currentState!.validate()) {
        TFullScreenLoader.stopLoading();
        return;
      }
      if (rememberMe.value) {
        locaStorage.write('REMEMBER_ME_EMAIL', email.text.trim());
        locaStorage.write('REMEMBER_ME_PASSWORD', password.text.trim());
      }
       await AuthenticationRepository.instance
          .loginWithEmailAndPassword(email.text.trim(), password.text.trim());


      TFullScreenLoader.stopLoading();
      AuthenticationRepository.instance.screenRedirect();




    } catch (e) {
      TFullScreenLoader.stopLoading();
      TLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    }
  }
}
