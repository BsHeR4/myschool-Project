class AnnouncmentModel {
  final int id;
  final String title;
  final String content;
  final String createDate; //Must be added to our database to know create time
  final String creator;

  AnnouncmentModel({
    required this.id,
    required this.content,
    required this.createDate,
    required this.creator,
    required this.title,
  });

  factory AnnouncmentModel.fromJson(jsonData) {
    return AnnouncmentModel(
      id: jsonData['IdAnnouncment'],
      content: jsonData['content'],
      createDate: jsonData['Date_Created'],
      creator: jsonData['creator'],
      title: jsonData['title']
    );
  }
}
