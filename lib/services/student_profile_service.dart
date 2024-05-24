import 'package:myschool/constants.dart';
import 'package:myschool/helper/api.dart';
import 'package:myschool/models/student_profile_model.dart';

class StudentProfileService {
  Future<StudentProfileModel> StudentProfile(
      {required String token, required String accept}) async {
    String url = '$baseUrl/api/profileStudent';
    final Map<String, dynamic> data =
        await Api().get(url: url, token: token, accept: accept);

    return StudentProfileModel.fromJson(data);
  }
}
