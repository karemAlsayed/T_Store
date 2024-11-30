import 'package:dartz/dartz.dart';

abstract class AuthFirebaseServices {
  Future<Either> signup();
  Future<Either> sigin();
  Future<bool> isLoggedIn();
  Future<Either> logout();
  Future<Either> resetPassword({required String email});
  Future<Either> sendEmailVerification();
}

class AuthFirebaseServicesImpl extends AuthFirebaseServices {
  @override
  Future<bool> isLoggedIn() {
    
    throw UnimplementedError();
  }

  @override
  Future<Either> logout() {
    
    throw UnimplementedError();
  }

  @override
  Future<Either> resetPassword({required String email}) {
    
    throw UnimplementedError();
  }

  @override
  Future<Either> sendEmailVerification() {
  
    throw UnimplementedError();
  }

  @override
  Future<Either> sigin() {
    
    throw UnimplementedError();
  }

  @override
  Future<Either> signup() {
  
    throw UnimplementedError();
  }
}
