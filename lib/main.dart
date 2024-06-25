import 'package:flutter/material.dart';
import 'package:myschool/pages/home_page.dart';
import 'package:myschool/pages/homework_page.dart';
import 'package:myschool/pages/login_page.dart';
import 'package:myschool/pages/main_page.dart';
import 'package:myschool/pages/mark_page.dart';
import 'package:myschool/pages/note_page.dart';
import 'package:myschool/pages/show_homework_page.dart';
import 'package:myschool/pages/show_mark_page.dart';
import 'package:myschool/pages/weekly_schedule_page.dart';
import 'package:myschool/providers/login_provider.dart';
import 'package:myschool/widgets/bottom_navigation_bar.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MySchool());
}

// Colors :
// lightBlue : #C1E8FF
//
class MySchool extends StatefulWidget {
  const MySchool({super.key});

  @override
  State<MySchool> createState() => _MySchoolState();
}

class _MySchoolState extends State<MySchool> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(create: (context) {
          return LoginProvider();
        }),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.light,
          /* light theme settings */
        ),
        darkTheme: ThemeData(
          brightness: Brightness.dark,
          /* dark theme settings */
        ),
        themeMode: ThemeMode.system,
        /* ThemeMode.system to follow system theme, 
         ThemeMode.light for light theme, 
         ThemeMode.dark for dark theme
      */
        routes: {
          LoginPage.id: (context) => LoginPage(),
          HomePage.id: (context) => HomePage(),
          CustomBottomNavigationBar.id: (context) =>
              CustomBottomNavigationBar(),
          MainPage.id: (context) => MainPage(),
          HomeworkPage.id: (context) => HomeworkPage(),
          MarkPage.id: (context) => MarkPage(),
          NotePage.id: (context) => NotePage(),
          ShowMarkPage.id: (context) => ShowMarkPage(),
          ShowHomeworkPage.id: (context) => ShowHomeworkPage(),
          WeeklySchedule.id: (context) => WeeklySchedule(),
        },
        initialRoute: LoginPage.id,
      ),
    );
  }
}
