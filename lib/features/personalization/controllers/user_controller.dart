import 'package:get/get.dart';
import 'package:store_app/data/repos/user_repo.dart';
import 'package:store_app/features/auth/models/user_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class UserController extends GetxController {
  static UserController get instance => Get.find();
  Future<void> saveUserRecord(AuthResponse response) async {
    try {
      if (response.user != null) {
        final nameParts = UserModel.nameParts(response.user!.userMetadata!['first_name'] ?? '');
        final userName = UserModel.generateUsername(response.user!.userMetadata!['first_name'] ?? '');

        final user = UserModel(
          id: response.user!.id,
          firstName: nameParts[0],
          lastName: nameParts.length > 1 ? nameParts.sublist(1).join() : '',
          username: userName,
          email: response.user!.email.toString(),
          phoneNumber: response.user!.userMetadata!['phone_number'] ?? '',
          profilePicture: response.user!.userMetadata!['profile_picture'] ?? '',
        );

        await UserRepositry.instance.saveUserRecord(user);

      }
    } catch (e) {}
  }
}
