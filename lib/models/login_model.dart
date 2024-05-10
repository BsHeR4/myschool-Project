class LoginModel {
  final String token;

  LoginModel({required this.token});

  factory LoginModel.formJson(data) {
    return LoginModel(
      token: data['token'],
    );
  }
}
