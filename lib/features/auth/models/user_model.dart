import 'package:store_app/utils/formatters/formatter.dart';

class UserModel {
  final String id;
  late final String firstName;
  late final String lastName;
  final String username;
  final String email;
  final String phoneNumber;
  final String? profilePicture;

  UserModel({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.username,
    required this.email,
    required this.phoneNumber,
    this.profilePicture,
  });

  String get fullName => '$firstName $lastName';
  String get formattedPhoneNumber => TFormatter.formatPhoneNumber(phoneNumber);

  static List<String> nameParts(fullName)=> fullName.split(' ');

  static String generateUsername(fullName) {
    List<String> nameParts = fullName.split(' ');
    String firstName = nameParts[0].toLowerCase();
    String lastName = nameParts.length > 1 ? nameParts[1].toLowerCase() : '';
    String camelCaseUsername = '$firstName$lastName';
    String userNameWithPrefix = "cwt_$camelCaseUsername";

    return userNameWithPrefix;
  }
 static UserModel empty() {
   return UserModel(
     id: '',
     firstName: '',
     lastName: '',
     username: '',
     email: '',
     phoneNumber: '',
     profilePicture: '',
   );
 }
  /// Factory constructor to create a `UserModel` from Supabase's user data.
  factory UserModel.fromSupabase(Map<String, dynamic> userData) {
    return UserModel(
      id: userData['id'],
      firstName: userData['first_name'] ?? '',
      lastName: userData['last_name'] ?? '',
      username: userData['username'] ?? '',
      email: userData['email'] ?? '',
      phoneNumber: userData['phone_number'] ?? '',
      profilePicture: userData['profile_picture'],
    );
  }

  /// Convert `UserModel` to JSON (e.g., for local storage or sending to an API)
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'first_name': firstName,
      'last_name': lastName,
      'username': username,
      'email': email,
      'phone_number': phoneNumber,
      'profile_picture': profilePicture,
    };
  }
}
