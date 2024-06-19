import 'package:myschool/constants.dart';
import 'package:myschool/helper/api.dart';

class LogoutService {
  Future Logout({required String token, required String accept}) async {
    String url = '$baseUrl/api/logoutStudent';
    await Api().get(url: url, token: token, accept: accept);
    
  }
}
