import 'package:flutter/material.dart';
import 'package:nnstories_lesson/UI/pages/first_screen.dart';
import 'package:nnstories_lesson/UI/widgets/menu.dart';

import '../widgets/my_scaffold.dart';

class FourthPage extends StatelessWidget {
  const FourthPage({Key? key}) : super(key: key);

  static const String  title=  "Страница 4";

  @override
  Widget build(BuildContext context) {
    return buildBody(context);
  }

  buildBody(BuildContext context) {
    return Center (child: Text(title),);
  }

}


