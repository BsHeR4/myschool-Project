import 'package:flutter/material.dart';
import 'package:myschool/pages/login_page.dart';

void main() {
  runApp(const MySchool());
}

class MySchool extends StatelessWidget {
  const MySchool({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        LoginPage.id: (context) => LoginPage(),
      },
      initialRoute: LoginPage.id,
    );
  }
}
