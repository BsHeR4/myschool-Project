class StudentNoteModel {
  final int id;
  final String creator;
  final String content;
  final String dateCreated;
  // final String noteType;

  StudentNoteModel({
    required this.id,
    required this.creator,
    required this.content,
    required this.dateCreated,
    // required this.noteType,
  });

  factory StudentNoteModel.fromJson(jsonData) {
    return StudentNoteModel(
      id: jsonData['noteId'],
      content: jsonData['content'],
      creator: jsonData['creator'],
      dateCreated: jsonData['Date_Created'],
      // noteType: jsonData['noteType'],
    );
  }
}
