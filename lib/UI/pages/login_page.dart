import 'dart:html';

import 'package:flutter/material.dart';
import 'package:nnstories_lesson/UI/pages/third_page.dart';
import 'package:nnstories_lesson/UI/widgets/menu.dart';
import 'package:nnstories_lesson/UI/widgets/my_scaffold.dart';
import 'package:nnstories_lesson/UI/widgets/news_widget.dart';

import '../../data/models/db_requests.dart';
import '../../data/models/news_model.dart';



class LoginPage extends StatefulWidget {
  static const String  title=  "Login";

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  List<NewsModel> newsModelList = [];

  Future<void> getNewsFromDB() async {
    newsModelList = await getNewsFromDBTest();
  }

  @override
  void initState() {
    getNewsFromDB().then((value) {
      setState(() {

      });
    });
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return buildBody(context);
  }

  Widget buildBody(BuildContext context) {
    return Column(children: [
      Text('login'),
      Text('password')
    ],);
  }
}
