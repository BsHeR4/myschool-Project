import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myschool/widgets/drawer_nav.dart';
import 'package:myschool/widgets/homework_button.dart';

class HomeworkPage extends StatelessWidget {
  const HomeworkPage({super.key});
  static String id = 'HomeworkPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Builder(
            builder: (context) => IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.white,
                size: 40,
              ),
              onPressed: () => Scaffold.of(context).openDrawer(),
            ),
          ),
          backgroundColor: Color(0xff052659),
          title: Text(
            'Homeworks',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.notifications,
                  size: 40,
                  color: Colors.white,
                )),
          ],
        ),
        drawer: DrawerNav(),
        body: Column(
          children: [
            HomeworkButton(
              text: 'New Homeworks',
              image: 'assets/images/personal_notebook.png',
            ),
            HomeworkButton(
              text: 'Completed Homeworks',
              image: 'assets/images/completing.png',
            ),
          ],
        ));
  }
}
