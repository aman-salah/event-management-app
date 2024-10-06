class User {
  int? userId;
  String firstName;
  String lastName;
  String email;
  String password;
  String role;

  User(
      {this.userId,
      required this.firstName,
      required this.lastName,
      required this.email,
      required this.password,
      required this.role});

  Map<String, dynamic> toMap() {
    return {
      'user_id': userId,
      'first_name': firstName,
      'last_name': lastName,
      'email': email,
      'password': password,
      'role': role,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      userId: map['user_id'],
      firstName: map['first_name'],
      lastName: map['last_name'],
      email: map['email'],
      password: map['password'],
      role: map['role'],
    );
  }
}
