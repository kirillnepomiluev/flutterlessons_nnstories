import 'package:flutter/material.dart';

import 'menu.dart';

class MyScaffold extends StatelessWidget {
  final String title;
  final Widget body;
   MyScaffold({Key? key, this.title = "Заголовок", required this.body}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    if (width > 420) {
      return Scaffold(
        appBar: AppBar(title: Text(title)),
        body: Row(
          children: [
            Expanded(
              child: Text(
                title,
                style: TextStyle(fontSize: 24),
              ),
            ),
            Expanded(
              flex: 3,
                child: body),
            buildMenu(context, width: 150)
          ],
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(title: Text(title)),
        drawerEdgeDragWidth: width * 0.7,
        endDrawer: buildMenu(context, width:width * 0.7),
        body: body,

      );
    }
  }


}