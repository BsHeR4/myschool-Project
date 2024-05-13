import 'package:flutter/material.dart';
import 'package:myschool/components/announcment_box.dart';
import 'package:myschool/components/bottom_navigation_bar.dart';
import 'package:myschool/pages/home_page_without_announcment.dart';
import 'package:myschool/pages/login_page.dart';
import 'package:myschool/providers/login_provider.dart';
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
        },
        initialRoute: LoginPage.id,
      ),
    );
  }
}
