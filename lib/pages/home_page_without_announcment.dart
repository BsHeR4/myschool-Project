import 'package:flutter/material.dart';
import 'package:myschool/components/announcment_box.dart';
import 'package:myschool/components/bottom_navigation_bar.dart';
import 'package:myschool/models/login_model.dart';
import 'package:myschool/providers/login_provider.dart';
import 'package:provider/provider.dart';

class HomePageWithoutAnnouncment extends StatelessWidget {
  HomePageWithoutAnnouncment({super.key});
  static String id = 'HomePageWithoutAnnouncment';

  @override
  Widget build(BuildContext context) {
    LoginModel? loginData = Provider.of<LoginProvider>(context).loginData;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Color(0xff052659),
            elevation: 0,
            floating: false,
            pinned: true,
            expandedHeight: 400.0,
            title: IconButton(
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
                            style: TextStyle(fontSize: 20, color: Colors.cyan),
                          ),
                          Text(
                            loginData!.token,
                            style: TextStyle(fontSize: 20, color: Colors.white),
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
                            style: TextStyle(fontSize: 20, color: Colors.cyan),
                          ),
                          Text(
                            ' Secondary Third',
                            style: TextStyle(fontSize: 20, color: Colors.white),
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
                            style: TextStyle(fontSize: 20, color: Colors.cyan),
                          ),
                          Text(
                            ' First',
                            style: TextStyle(fontSize: 20, color: Colors.white),
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
                  padding: const EdgeInsets.symmetric(vertical: 25),
                  child: Text(
                    ' Announcment',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
              ),
              Image.asset('assets/images/no-announcment.png'),
            ]),
          ),
        ],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
