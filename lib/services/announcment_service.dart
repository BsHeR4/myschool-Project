import 'package:myschool/constants.dart';
import 'package:myschool/helper/api.dart';
import 'package:myschool/models/announcment_model.dart';

class AnnouncmentService{
  Future<List<AnnouncmentModel>> Announcment(
      {required String token, required String accept}) async {
    String url = '$baseUrl/api/AnnouncmentStudent';
    final Map<String, dynamic> data =
        await Api().get(url: url, token: token, accept: accept);

    List announcmentData = data['data'];
    List<AnnouncmentModel> announcmentList = [];
    for (var i = 0; i < announcmentData.length; i++) {
      announcmentList.add(AnnouncmentModel.fromJson(announcmentData[i]));
    }
    return announcmentList;
  }
}