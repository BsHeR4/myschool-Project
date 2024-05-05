import 'dart:io';

class HomeworkModel {
  final File file; // I should search for this type and know if it work or not
  final String homeworkName;
  final DateTime startDate;
  final DateTime endDate;
  final String subjectName;
  final String teacherName;

  HomeworkModel({
    required this.file,
    required this.homeworkName,
    required this.startDate,
    required this.endDate,
    required this.subjectName,
    required this.teacherName,
  });

  factory HomeworkModel.fromJson(jsonData) {
    return HomeworkModel(
      file: jsonData['file'],
      homeworkName: jsonData['homeworkName'],
      startDate: jsonData['startDate'],
      endDate: jsonData['endDate'],
      subjectName: jsonData['subjectName'],
      teacherName: jsonData['teacherName'],
    );
  }
}
