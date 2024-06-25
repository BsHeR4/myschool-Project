class MarkModel {
  final String teacherName;
  final int maxSubjectMark;
  final int minSubjectMark;
  final int maxMark;
  final int mark;
  final String type;

  MarkModel({
    required this.teacherName,
    required this.maxSubjectMark,
    required this.minSubjectMark,
    required this.maxMark,
    required this.mark,
    required this.type,
  });

  factory MarkModel.fromJson(jsonData) {
    return MarkModel(
      teacherName: jsonData['teacher'],
      maxSubjectMark: jsonData['max'],
      minSubjectMark: jsonData['min'],
      maxMark: jsonData['mx'],
      mark: jsonData['mark'],
      type: jsonData['name'],
    );
  }
}
