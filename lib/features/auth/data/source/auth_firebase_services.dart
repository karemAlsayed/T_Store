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
    // TODO: implement isLoggedIn
    throw UnimplementedError();
  }

  @override
  Future<Either> logout() {
    // TODO: implement logout
    throw UnimplementedError();
  }

  @override
  Future<Either> resetPassword({required String email}) {
    // TODO: implement resetPassword
    throw UnimplementedError();
  }

  @override
  Future<Either> sendEmailVerification() {
    // TODO: implement sendEmailVerification
    throw UnimplementedError();
  }

  @override
  Future<Either> sigin() {
    // TODO: implement sigin
    throw UnimplementedError();
  }

  @override
  Future<Either> signup() {
    // TODO: implement signup
    throw UnimplementedError();
  }
}
