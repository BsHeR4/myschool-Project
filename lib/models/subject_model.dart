class SubjectModel {
  final int id;
  final String subjectName;
  final String subjectClass;
  final String maxMark;
  final String minMark;

  SubjectModel({
    required this.id,
    required this.subjectName,
    required this.subjectClass,
    required this.maxMark,
    required this.minMark,
  });

  factory SubjectModel.fromJson(jsonData) {
    return SubjectModel(
      id: jsonData['id'],
      subjectName: jsonData['subjectName'],
      subjectClass: jsonData['subjectClass'],
      maxMark: jsonData['maxMark'],
      minMark: jsonData['minMark'],
    );
  }
}
