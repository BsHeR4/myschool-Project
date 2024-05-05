class NoteModel {
  final int id;
  final DateTime noteDate;
  final String noteType;
  final String noteContent;
  final String noteCreator;

  NoteModel({
    required this.id,
    required this.noteDate,
    required this.noteType,
    required this.noteContent,
    required this.noteCreator,
  });

  factory NoteModel.fromJson(jsonData) {
    return NoteModel(
      id: jsonData['id'],
      noteDate: jsonData['noteDate'],
      noteType: jsonData['noteType'],
      noteContent: jsonData['noteContent'],
      noteCreator: jsonData['noteCreator'],
    );
  }
}
