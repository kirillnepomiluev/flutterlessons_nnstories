import 'dart:html';

import 'package:flutter/material.dart';
import 'package:nnstories_lesson/UI/pages/third_page.dart';
import 'package:nnstories_lesson/UI/widgets/menu.dart';
import 'package:nnstories_lesson/UI/widgets/my_scaffold.dart';
import 'package:nnstories_lesson/UI/widgets/news_widget.dart';

import '../../data/models/db_requests.dart';
import '../../data/models/news_model.dart';



class FirstScreen extends StatefulWidget {
  static const String  title=  "Страница 1";

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
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
    return MyScaffold(title: FirstScreen.title, body: buildBody(context), );
  }

  buildBody(BuildContext context) {
    return newsModelList.isEmpty?
    Center( child: CircularProgressIndicator(),)
        :
        ListView.builder( itemCount: newsModelList.length,
          itemBuilder: (BuildContext context, int index) {
          return NewsWidget(newsModel: newsModelList[index]);
        },);
  }
}
