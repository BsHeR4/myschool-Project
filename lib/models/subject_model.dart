class SubjectModel {
  final int id;
  final String subjectName;

  SubjectModel({
    required this.id,
    required this.subjectName,
  });

  factory SubjectModel.fromJson(jsonData) {
    return SubjectModel(
      id: jsonData['idS'],
      subjectName: jsonData['sub_name'],
    );
  }
}
