class StudentHomeworkModel {
  // final File file; // I should search for this type and know if it work or not
  final String creator;
  final String subjectName;
  final String startDate;
  final String endDate;
  // final String homeworkName;

  StudentHomeworkModel({
    // required this.file,
    required this.creator,
    required this.subjectName,
    required this.startDate,
    required this.endDate,
    // required this.homeworkName,
  });

  factory StudentHomeworkModel.fromJson(jsonData) {
    return StudentHomeworkModel(
      // file: jsonData['file'],
      creator: jsonData['creator'],
      subjectName: jsonData['subject'],
      startDate: jsonData['startHomework'],
      endDate: jsonData['endHomework'],
      // homeworkName: jsonData['homeworkName'],
    );
  }
}
