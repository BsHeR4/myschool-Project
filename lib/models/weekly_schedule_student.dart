class WeeklyScheduleStudentModel {
  final String WeeklyScheduleUrl;

  WeeklyScheduleStudentModel({required this.WeeklyScheduleUrl});

  factory WeeklyScheduleStudentModel.fromJson(jsonData) {
    return WeeklyScheduleStudentModel(
      WeeklyScheduleUrl: jsonData['data'][0]['WeeklySchedule'],
    );
  }
}
