import 'dart:html';

import 'package:flutter/material.dart';
import 'package:nnstories_lesson/UI/pages/third_page.dart';
import 'package:nnstories_lesson/UI/widgets/menu.dart';
import 'package:nnstories_lesson/UI/widgets/my_scaffold.dart';
import 'package:nnstories_lesson/UI/widgets/news_widget.dart';



class FirstScreen extends StatelessWidget {
  static const String  title=  "Страница 1";

  @override
  Widget build(BuildContext context) {
    return MyScaffold(title: title, body: buildBody(context), );
  }

  buildBody(BuildContext context) {
    return ListView(children: [
      NewsWidget(),
      NewsWidget(),
      NewsWidget(),
    ],);
  }
}
