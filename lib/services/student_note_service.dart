import 'package:myschool/constants.dart';
import 'package:myschool/helper/api.dart';
import 'package:myschool/models/note_model.dart';

class StudentNoteService {
  Future<List<StudentNoteModel>> StudentNote(
      {required String token, required String accept}) async {
    List<StudentNoteModel> noteList = [];
    String url = '$baseUrl/api/nodeStudent';
    try {
      final Map<String, dynamic> data =
          await Api().get(url: url, token: token, accept: accept);

      List noteData = data['data'];
      for (var i = 0; i < noteData.length; i++) {
        noteList.add(StudentNoteModel.fromJson(noteData[i]));
      }
    } on Exception catch (e) {
      print(e);
    }
    return noteList;
  }
}
