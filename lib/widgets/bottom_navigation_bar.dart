import 'package:flutter/material.dart';
import 'package:myschool/pages/home_page.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  CustomBottomNavigationBar({super.key});
  static String id = 'CustomBottomNavigationBar';

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int myindex = 0;
  List<String> widgetList = [
    HomePage.id,
  ];
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: myindex,
      onTap: (index) {
        setState(() {
          myindex = index;
          Navigator.pushNamedAndRemoveUntil(
            context,
            widgetList[index],
            (route) => false,
          );
        });
      },
      items: [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              semanticLabel: 'Home',
            ),
            label: 'home'),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              semanticLabel: 'Home',
            ),
            label: 'home'),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              semanticLabel: 'Home',
            ),
            label: 'home')
      ],
    );
  }
}
