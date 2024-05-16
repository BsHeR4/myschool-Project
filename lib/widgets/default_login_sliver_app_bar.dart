import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DefaultLoginSliverAppBar extends StatelessWidget {
  const DefaultLoginSliverAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      // bottom: PreferredSize(
      //   preferredSize: Size.fromHeight(4),
      //   child: Container(
      //     width: double.infinity,
      //     height: 100,
      //     decoration: BoxDecoration(
      //         color: Colors.black,
      //         borderRadius: BorderRadius.only(
      //             topRight: Radius.circular(110))),
      //   ),
      // ),
      backgroundColor: Color(0xff052659),
      elevation: 0,
      floating: false,
      pinned: false,
      expandedHeight: 300.0,
      flexibleSpace: FlexibleSpaceBar(
        background: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets/images/logo.jpeg',
                  cacheHeight: 100,
                  height: 100,
                ),
              ),
              SizedBox(
                height: 14,
              ),
              Text(
                'mySchool',
                style: TextStyle(
                    color: Colors.white, fontSize: 22, fontFamily: 'pacifico'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
