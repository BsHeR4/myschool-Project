import 'package:flutter/material.dart';
import 'package:myschool/components/announcment_box.dart';

class HomePageWithoutAnnouncment extends StatelessWidget {
  const HomePageWithoutAnnouncment({super.key});
  static String id = 'HomePageWithoutAnnouncment';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnouncmentBox(),
      
    );
  }
}
