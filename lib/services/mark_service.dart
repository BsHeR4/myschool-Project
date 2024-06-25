import 'package:myschool/constants.dart';
import 'package:myschool/helper/api.dart';
import 'package:myschool/models/mark_model.dart';

class MarkService {
  Future<List<MarkModel>> StudentMark(
      {required String token, required String accept, required int idS}) async {
    List<MarkModel> markList = [];
    String url = '$baseUrl/api/showMarkStudent?idS=$idS';

    try {
      final Map<String, dynamic> data =
          await Api().get(url: url, token: token, accept: accept);

      List markData = data['data'];

      for (var i = 0; i < markData.length; i++) {
        markList.add(MarkModel.fromJson(markData[i]));
      }
    } on Exception catch (e) {
      print(e);
    }
    return markList;
  }
}
