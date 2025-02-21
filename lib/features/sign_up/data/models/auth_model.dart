class AuthModel {
  final String firstName, lastName, username, email, phoneNumber, password;
  final DateTime dateOfBirth;

  AuthModel({
    required this.firstName,
    required this.lastName,
    required this.username,
    required this.email,
    required this.phoneNumber,
    required this.password,
    required this.dateOfBirth,
  });

  Map<String, dynamic> toJson() {
    return {
      "username": username,
      "fullName": "$firstName $lastName",
      "email": email,
      "phoneNumber": phoneNumber,
      "birthDate": "${dateOfBirth.year}-${dateOfBirth.month}-${dateOfBirth.day}",
      "password": password,
    };
  }
}