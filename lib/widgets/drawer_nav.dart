import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myschool/constants.dart';
import 'package:myschool/helper/api.dart';
import 'package:myschool/helper/show_snack_bar.dart';
import 'package:myschool/models/login_model.dart';
import 'package:myschool/models/student_profile_model.dart';
import 'package:myschool/pages/login_page.dart';
import 'package:myschool/pages/main_page.dart';
import 'package:myschool/providers/login_provider.dart';
import 'package:myschool/services/logout_service.dart';
import 'package:myschool/services/student_profile_service.dart';
import 'package:provider/provider.dart';

class DrawerNav extends StatelessWidget {
  const DrawerNav({super.key});

  @override
  Widget build(BuildContext context) {
    LoginModel? loginData =
        Provider.of<LoginProvider>(context, listen: false).loginData;
    return FutureBuilder<StudentProfileModel>(
        future: StudentProfileService().StudentProfile(
            token: loginData!.token!, accept: 'application/json'),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return Center(child: Text('Error :${snapshot.error}'));
          } else {
            return Drawer(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  UserAccountsDrawerHeader(
                    accountName: Text(
                        '${snapshot.data!.firsName} ${snapshot.data!.lastName}'),
                    accountEmail: Text(snapshot.data!.email),
                    currentAccountPicture: Icon(
                      Icons.account_circle,
                      color: Colors.white,
                      size: 65,
                    ),
                    decoration: BoxDecoration(color: kPrimaryColor),
                  ),
                  ListTile(
                    leading: Icon(Icons.logout_outlined),
                    title: Text('Logout'),
                    onTap: () {
                      LogoutService().Logout(
                        token: loginData.token,
                        accept: 'application/json',
                      );
                      Navigator.pop(context);
                      Navigator.popAndPushNamed(
                        context,
                        LoginPage.id,
                      );
                      showSnackBar(
                          context,
                          'Logged out successfully',
                          Icon(
                            Icons.logout_outlined,
                            color: kPrimaryColor,
                          ));
                    },
                  )
                ],
              ),
            );
          }
        });
  }
}
