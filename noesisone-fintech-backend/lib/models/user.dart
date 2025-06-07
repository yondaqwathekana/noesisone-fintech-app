class User {
  final String firstName;
  final String lastName;
  final String email;
  final String idOrPassport;
  final String phoneNumber;
  final String countryCode;
  final int age;
  final String gender;

  User({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.idOrPassport,
    required this.phoneNumber,
    required this.countryCode,
    required this.age,
    required this.gender,
  });

  Map<String, dynamic> toJson() => {
    'firstName': firstName,
    'lastName': lastName,
    'email': email,
    'idOrPassport': idOrPassport,
    'phoneNumber': phoneNumber,
    'countryCode': countryCode,
    'age': age,
    'gender': gender,
  };
}