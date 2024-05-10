import 'package:flutter/material.dart';
import 'package:myschool/components/announcment_box.dart';
import 'package:myschool/models/login_model.dart';

class HomePageWithoutAnnouncment extends StatelessWidget {
  HomePageWithoutAnnouncment({super.key});
  static String id = 'HomePageWithoutAnnouncment';

  @override
  Widget build(BuildContext context) {
    LoginModel loginModel =
        ModalRoute.of(context)!.settings.arguments as LoginModel;
    return Scaffold(
      body: AnnouncmentBox(
        token: loginModel.token,
      ),
    );
  }
}
