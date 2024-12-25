import 'package:get/get.dart';
import 'package:store_app/data/repos/auth_repo.dart';
import 'package:store_app/features/auth/models/user_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class UserRepositry extends GetxController {
  static UserRepositry get instance => Get.find();
  final SupabaseClient _db = Supabase.instance.client;

  /// Save a new user record in the database
  Future<void> saveUserRecord(UserModel user) async {
    try {
      await _db.from('users').insert(user.toJson());
    } catch (e) {
      throw Exception('Error saving user record: $e');
    }
  }

  /// Fetch user details by their ID
  Future<UserModel> fetchUserDetails() async {
    try {
      final documentSnapshot = await _db
          .from('users')
          .select()
          .eq('id', AuthenticationRepository.instance.authUser!.id)
          .single();

      if ( documentSnapshot.isNotEmpty) {
        return UserModel.fromSupabase(documentSnapshot);
      } else {
        return UserModel.empty();
      }
    } catch (e) {
      throw Exception('Error fetching user details: $e');
    }
  }

  /// Update all user details with the provided `UserModel`
  Future<void> updateUserDetails(UserModel updatedUser) async {
    try {
      await _db
          .from('users')
          .update(updatedUser.toJson())
          .eq('id', updatedUser.id);
    } catch (e) {
      throw Exception('Error updating user details: $e');
    }
  }

  /// Update a single or multiple fields in the user record
  Future<void> updateSingleField(String userId, Map<String, dynamic> json) async {
    if (json.isEmpty) {
      throw Exception('No fields provided to update.');
    }

    try {
      await _db.from('users').update(json).eq('id', userId);
    } catch (e) {
      throw Exception('Error updating user details: $e');
    }
  }
}
