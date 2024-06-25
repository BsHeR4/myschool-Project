import 'package:myschool/constants.dart';
import 'package:myschool/helper/api.dart';
import 'package:myschool/models/homework_model.dart';

class StudentHomeworkService {
  Future<List<StudentHomeworkModel>> StudentHomework(
      {required String token, required String accept}) async {
    List<StudentHomeworkModel> homeworkList = [];
    String url = '$baseUrl/api/HomeworkSudent';

    try {
      final Map<String, dynamic> data =
          await Api().get(url: url, token: token, accept: accept);

      List homeworkData = data['data'];
      for (var i = 0; i < homeworkData.length; i++) {
        homeworkList.add(StudentHomeworkModel.fromJson(homeworkData[i]));
      }
    } on Exception catch (e) {
      print(e);
    }
    return homeworkList;
  }
}
