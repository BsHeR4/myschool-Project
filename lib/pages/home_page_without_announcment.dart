import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myschool/widgets/bottom_navigation_bar.dart';
import 'package:myschool/models/login_model.dart';
import 'package:myschool/providers/login_provider.dart';
import 'package:provider/provider.dart';

class HomePageWithoutAnnouncment extends StatelessWidget {
  HomePageWithoutAnnouncment({super.key});
  static String id = 'HomePageWithoutAnnouncment';

  @override
  Widget build(BuildContext context) {
    LoginModel? loginData =
        Provider.of<LoginProvider>(context, listen: false).loginData;
    // print('this is from home page ${loginData!.token}');
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Color(0xff052659),
            elevation: 0,
            floating: false,
            pinned: true,
            expandedHeight: 380.0,
            leading: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.menu_outlined,
                  size: 40,
                  color: Colors.white,
                )),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.notifications,
                    size: 40,
                    color: Colors.white,
                  )),
            ],
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.account_circle,
                        size: 150,
                        color: Colors.white,
                      ),
                      Text(
                        'BsherM_2004',
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Text(
                            'Student Name : ',
                            style: TextStyle(
                              fontSize: 20,
                              color: Color(0xffc1e8ff),
                            ),
                          ),
                          Text(
                            'Bsher Al-Mahayni',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            'Class : ',
                            style: TextStyle(
                              fontSize: 20,
                              color: Color(0xffc1e8ff),
                            ),
                          ),
                          Text(
                            ' Secondary Third',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            'Division : ',
                            style: TextStyle(
                              fontSize: 20,
                              color: Color(0xffc1e8ff),
                            ),
                          ),
                          Text(
                            ' First',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Text(
                    ' Announcments',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
              ),
              Image.asset(
                'assets/images/no-announcment.png',
                height: 280,
              ),
              Center(
                child: Text(
                  'There is no announcment now',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
