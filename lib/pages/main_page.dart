import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myschool/pages/home_page_without_announcment.dart';
import 'package:myschool/pages/homework_page.dart';
import 'package:myschool/pages/mark_page.dart';
import 'package:myschool/pages/note_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});
  static String id = 'MainPage';
  @override
  State<MainPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MainPage> {
  int myindex = 0;
  List<Widget> widgetsList = [
    HomePageWithoutAnnouncment(),
    MarkPage(),
    HomeworkPage(),
    NotePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: widgetsList[myindex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color(0xff052659),
        type: BottomNavigationBarType.fixed,
        currentIndex: myindex,
        onTap: (index) {
          setState(() {
            myindex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_filled,
                semanticLabel: 'Home',
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.award,
                semanticLabel: 'Marks',
              ),
              label: 'Marks'),
          BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.bookOpen,
                semanticLabel: 'Homeworks',
              ),
              label: 'Homeworks'),
          BottomNavigationBarItem(
              // FontAwesomeIcons.schoolCircleExclamation
              icon: Icon(
                FontAwesomeIcons.schoolCircleExclamation,
                semanticLabel: 'Notes',
              ),
              label: 'Notes'),
        ],
      ),
    );
  }
}
