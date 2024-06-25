import 'package:myschool/constants.dart';
import 'package:myschool/helper/api.dart';
import 'package:myschool/models/login_model.dart';

class LoginService {
  Future<LoginModel> Login(
      {required String userName, required String password}) async {
    Map<String, dynamic>? data;
    try {
      String url =
          '$baseUrl/api/loginStudent?username=$userName&password=$password';

      data = await Api().post(
        url: url,
      );
    } on Exception catch (e) {
      print(e);
    }
    return LoginModel.formJson(data);
  }
}
