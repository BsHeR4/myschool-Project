import 'package:myschool/constants.dart';
import 'package:myschool/helper/api.dart';
import 'package:myschool/models/login_model.dart';

class LoginService {
  Future<LoginModel> Login(
      {required String userName, required String password}) async {
    String url =
        '$baseUrl/api/loginStudent?username=$userName&password=$password';

  Map<String, dynamic> data = await Api().post(
    url: url,
  );
  return LoginModel.formJson(data);


  
 

    
  }
}
