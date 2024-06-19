import 'package:myschool/constants.dart';
import 'package:myschool/helper/api.dart';
import 'package:myschool/models/note_model.dart';

class StudentNoteService {
  Future<List<StudentNoteModel>> StudentNote(
      {required String token, required String accept}) async {
    String url = '$baseUrl/api/nodeSudent';
    final Map<String, dynamic> data =
        await Api().get(url: url, token: token, accept: accept);

    List noteData = data['data'];
    List<StudentNoteModel> noteList = [];
    for (var i = 0; i < noteData.length; i++) {
      noteList.add(StudentNoteModel.fromJson(noteData[i]));
    }
    return noteList;
  }
}
