import 'package:myschool/constants.dart';
import 'package:myschool/helper/api.dart';
import 'package:myschool/models/homework_model.dart';

class StudentHomeworkService {
  Future<List<StudentHomeworkModel>> StudentHomework(
      {required String token, required String accept}) async {
    String url = '$baseUrl/api/HomeworkSudent';
    final Map<String, dynamic> data =
        await Api().get(url: url, token: token, accept: accept);

    List homeworkData = data['data'];
    List<StudentHomeworkModel> homeworkList = [];
    for (var i = 0; i < homeworkData.length; i++) {
      homeworkList.add(StudentHomeworkModel.fromJson(homeworkData[i]));
    }
    return homeworkList;
  }
}
