import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:store_app/data/repos/user_repo.dart';
import 'package:store_app/features/personalization/controllers/user_controller.dart';
import 'package:store_app/features/personalization/profile/profile.dart';
import 'package:store_app/utils/constants/image_strings.dart';
import 'package:store_app/utils/helpers/network_manager.dart';
import 'package:store_app/utils/popups/full_screen_loader.dart';
import 'package:store_app/utils/popups/loaders.dart';

class UpdateNameController extends GetxController {
  static UpdateNameController get instance => Get.find();

  // Controllers for text fields
  final firstName = TextEditingController();
  final lastName = TextEditingController();

  // Inject repositories and user controllers
  final userRepositry = Get.put(UserRepositry());
  final userController = UserController.instance;

  // Form validation key
  final GlobalKey<FormState> updateNameFormKey = GlobalKey<FormState>();

  @override
  void onInit() {
    super.onInit();
    initializeNames(); // Initialize names when the controller is created
  }

  /// Initialize the text controllers with the current user's name
  void initializeNames() {
    firstName.text = userController.user.value.firstName;
    lastName.text = userController.user.value.lastName;
  }

  /// Updates the user's name
  Future<void> updateUserName() async {
  try {
    // Show loading screen
    TFullScreenLoader.openLoadingDialog(
      'Updating Name...',
      TImages.registerIllustration,
    );

    // Check for network connectivity
    final isConnected = await NetworkManager.instance.isConnected();
    if (!isConnected) {
      TFullScreenLoader.stopLoading();
      TLoaders.warningSnackBar(
        title: 'No Internet Connection',
        message: 'Please check your internet connection and try again.',
      );
      return;
    }

    // Validate the form
    if (!updateNameFormKey.currentState!.validate()) {
      TFullScreenLoader.stopLoading();
      return;
    }

    // Prepare the data for updating
    Map<String, dynamic> nameData = {
      'first_name': firstName.text.trim(),
      'last_name': lastName.text.trim(),
      'id': userController.user.value.id, // Make sure 'id' is passed here
    };

    // Update user details in the repository
    await userRepositry.updateSingleField(nameData.toString(), nameData);

    // Update the locally stored user data
    userController.user.update((user) {
      if (user != null) {
        user.firstName = firstName.text.trim();
        user.lastName = lastName.text.trim();
      }
    });

    // Stop the loading and show success message
    TFullScreenLoader.stopLoading();
    TLoaders.successSnackBar(
      title: 'Success',
      message: 'Name updated successfully!',
    );

    // Navigate back to the profile screen
    Get.off(() => const ProfileScreen());
  } catch (e) {
    // Stop loading and display an appropriate error message
    TFullScreenLoader.stopLoading();
    TLoaders.errorSnackBar(
      title: 'Error',
      message: 'Unexpected error occurred: ${e.toString()}',
    );
  }
}

}
