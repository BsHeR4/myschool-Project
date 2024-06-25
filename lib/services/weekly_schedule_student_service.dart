import 'package:myschool/constants.dart';
import 'package:myschool/helper/api.dart';
import 'package:myschool/models/weekly_schedule_student.dart';

class WeeklyScheduleStudentService {
  Future<WeeklyScheduleStudentModel?> WeeklyScheduleStudent({
    required String token,
    required String accept,
  }) async {
    WeeklyScheduleStudentModel? WeeklySchedule;
    String url = '$baseUrl/api/WeeklyScheduleSudent';
    try {
      final Map<String, dynamic> data =
          await Api().get(url: url, token: token, accept: accept);

      WeeklySchedule = WeeklyScheduleStudentModel.fromJson(data);
    } on Exception catch (e) {
      print(e);
    }

    return WeeklySchedule;
  }
}
