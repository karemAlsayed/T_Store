

import 'package:get/get.dart';
import 'package:store_app/data/repos/user_repo.dart';

import 'package:store_app/utils/helpers/network_manager.dart';

class GeneralBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(NetworkManager());
    Get.put(UserRepositry());
  }
  
}