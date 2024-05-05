class AnnouncmentModel {
  final int id;
  final String content;
  final DateTime createDate; //Must be added to our database to know create time
  final String creatorName;

  AnnouncmentModel({
    required this.id,
    required this.content,
    required this.createDate,
    required this.creatorName,
  });

  factory AnnouncmentModel.fromJson(jsonData) {
    return AnnouncmentModel(
      id: jsonData['id'],
      content: jsonData['content'],
      createDate: jsonData['createDate'],
      creatorName: jsonData['creatorName'],
    );
  }
}
