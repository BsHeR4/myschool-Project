import 'package:myschool/constants.dart';
import 'package:myschool/helper/api.dart';
import 'package:myschool/models/subject_model.dart';

class SubjectService {
  Future<List<SubjectModel>> StudentSubject(
      {required String token, required String accept}) async {
    List<SubjectModel> subjectList = [];
    String url = '$baseUrl/api/showsubjectStudent';
    try {
      final Map<String, dynamic> data =
          await Api().get(url: url, token: token, accept: accept);

      List subjectData = data['data'];
      for (var i = 0; i < subjectData.length; i++) {
        subjectList.add(SubjectModel.fromJson(subjectData[i]));
      }
    } on Exception catch (e) {
      print(e);
    }
    return subjectList;
  }
}
