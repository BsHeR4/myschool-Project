class MarkModel {
  final int id;
  final String studentName;
  final String teacherName;
  final String subjectName;
  final int subjectMark;
  final String type;

  MarkModel({
    required this.id,
    required this.subjectName,
    required this.subjectMark,
    required this.type,
    required this.studentName,
    required this.teacherName,
  });

  factory MarkModel.fromJson(jsonData) {
    return MarkModel(
      id: jsonData['id'],
      subjectName: jsonData['subjectName'],
      subjectMark: jsonData['subjectMark'],
      type: jsonData['type'],
      studentName: jsonData['studentName'],
      teacherName: jsonData['teacherName'],
    );
  }
}
