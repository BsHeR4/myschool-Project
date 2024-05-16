import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MaxScrollingSliverAppBar extends StatelessWidget {
  const MaxScrollingSliverAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
          toolbarHeight: 60,
          collapsedHeight: 70,
          backgroundColor: Color(0xff052659),
          elevation: 0,
          floating: false,
          pinned: true,
          expandedHeight: 300.0,
          centerTitle: true,
          title: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets/images/logo.jpeg',
                  cacheHeight: 50,
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                'mySchool',
                style: TextStyle(
                    color: Colors.white, fontSize: 22, fontFamily: 'pacifico'),
              ),
            ],
          ),
    );
  }
}
