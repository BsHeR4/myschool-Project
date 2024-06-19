import 'package:myschool/constants.dart';
import 'package:myschool/helper/api.dart';
import 'package:myschool/models/weekly_schedule_student.dart';

class WeeklyScheduleStudentService {
  Future<WeeklyScheduleStudentModel> WeeklyScheduleStudent(
      {required String token, required String accept}) async {
    String url = '$baseUrl/api/WeeklyScheduleSudent';
    final Map<String, dynamic> data =
        await Api().get(url: url, token: token, accept: accept);

    WeeklyScheduleStudentModel WeeklySchedule =
        WeeklyScheduleStudentModel.fromJson(data);
    
    return WeeklySchedule;
  }
}
