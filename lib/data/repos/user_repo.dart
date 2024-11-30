


import 'package:get/get.dart';
import 'package:store_app/features/auth/models/user_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class UserRepositry extends GetxController{
 static UserRepositry get instance => Get.find();
 final SupabaseClient _db = Supabase.instance.client;

 Future<void> saveUserRecord(UserModel user)async{

  try{

    await _db.from('users').insert(user.toJson());

  }catch(e){
     throw 'Error saving user record: $e';
  }
 }

  
}