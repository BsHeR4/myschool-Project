import 'package:flutter/material.dart';
import 'package:myschool/pages/home_page_without_announcment.dart';
import 'package:myschool/pages/homework_page.dart';
import 'package:myschool/pages/login_page.dart';
import 'package:myschool/pages/main_page.dart';
import 'package:myschool/pages/mark_page.dart';
import 'package:myschool/pages/note_page.dart';
import 'package:myschool/providers/login_provider.dart';
import 'package:myschool/widgets/bottom_navigation_bar.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MySchool());
}

class MySchool extends StatelessWidget {
  const MySchool({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (context) {
        return LoginProvider();
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          LoginPage.id: (context) => LoginPage(),
          HomePageWithoutAnnouncment.id: (context) =>
              HomePageWithoutAnnouncment(),
          CustomBottomNavigationBar.id: (context) =>
              CustomBottomNavigationBar(),
          MainPage.id: (context) => MainPage(),
          HomeworkPage.id: (context) => HomeworkPage(),
          MarkPage.id: (context) => MarkPage(),
          NotePage.id: (context) => NotePage(),
        },
        initialRoute: MainPage.id,
      ),
    );
  }
}
