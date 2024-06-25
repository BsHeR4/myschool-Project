import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myschool/constants.dart';
import 'package:myschool/helper/api.dart';
import 'package:myschool/helper/show_snack_bar.dart';
import 'package:myschool/models/announcment_model.dart';
import 'package:myschool/pages/login_page.dart';

class AnnouncmentService {
  Future<List<AnnouncmentModel>> Announcment(
      {required String token, required String accept}) async {
    List<AnnouncmentModel> announcmentList = [];
    String url = '$baseUrl/api/AnnouncmentStudent';

    try {
      final Map<String, dynamic> data =
          await Api().get(url: url, token: token, accept: accept);

      List announcmentData = data['data'];
      for (var i = 0; i < announcmentData.length; i++) {
        announcmentList.add(AnnouncmentModel.fromJson(announcmentData[i]));
      }
    } on Exception catch (e) {
      print(e);
    }
    return announcmentList;
  }
}
