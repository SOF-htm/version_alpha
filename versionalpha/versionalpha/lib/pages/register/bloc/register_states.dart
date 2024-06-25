class RegisterStates {
  final String name;
  final String userName;
  final String email;
  final String password;
  const RegisterStates({
    this.name = "",
    this.userName = "",
    this.email = "",
    this.password = "",
  });

  RegisterStates copyWith({
    String? name,
    String? userName,
    String? email,
    String? password,
  }) {
    return RegisterStates(
      name : name ?? this.name,
      userName : userName ?? this.userName,
      email : email ?? this.email,
      password : password ?? this.password,
    );
  }
}
