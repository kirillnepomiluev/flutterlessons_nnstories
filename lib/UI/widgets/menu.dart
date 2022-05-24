import 'package:flutter/material.dart';
import 'package:nnstories_lesson/UI/pages/first_screen.dart';
import 'package:nnstories_lesson/UI/pages/forsth_page.dart';
import 'package:nnstories_lesson/UI/pages/second_page.dart';
import 'package:nnstories_lesson/UI/pages/third_page.dart';

Widget buildMenu(BuildContext context, {width = 200}) {
  return Container(
    width: width,
    color: Colors.redAccent,
    child: Column(
      children: [
        SizedBox(
          height: 70,
        ),
        ListTile(
          title: Text("Страница1"),
          onTap: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (BuildContext context) {
                  return FirstScreen();
                }));
          },
        ),
        ListTile(
          title: Text("Страница2"),
          onTap: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (BuildContext context) {
                  return SecondPage();
                }));
          },
        ),
        ListTile(
          title: Text("Страница3"),
          onTap: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (BuildContext context) {
                  return ThirdPage();
                }));
          },
        ),
        ListTile(
          title: Text("Страница4"),
          onTap: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (BuildContext context) {
                  return FourthPage();
                }));
          },
        ),
      ],
    ),
  );
}