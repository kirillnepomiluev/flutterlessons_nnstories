import 'package:flutter/material.dart';

import '../pages/first_screen.dart';
import '../pages/forsth_page.dart';
import '../pages/login_page.dart';
import '../pages/second_page.dart';
import '../pages/third_page.dart';

import 'menu.dart';
import 'menuI_button.dart';

class MyScaffold extends StatefulWidget {
  final String title;
  final Widget? body;

  MyScaffold({Key? key, this.title = "Заголовок", this.body}) : super(key: key);

  @override
  State<MyScaffold> createState() => _MyScaffoldState();
}

class _MyScaffoldState extends State<MyScaffold> {
  int _currentIndex = 0;
  String? _title;
  Widget? body;

  @override
  void initState() {
    _title = widget.title;
    body = widget.body;
    super.initState();
  }

  onMenuTap(int value) {

    setState(() {
      switch (value) {
        case 0:
          body = FirstScreen();
          _title = "Новости";
          break;
        case 1:
          body = SecondPage();
          _title = "Страница 2";
          break;
        case 2:
          body = ThirdPage();
          _title = "Страница 3";
          break;
        case 3:
          body = FourthPage();
          _title = "Страница 4";
          break;
      }

    });
  }

  @override
  Widget build(BuildContext context) {
    // List<Widget> pages = [
    //   FirstScreen(),
    //   FourthPage(),
    //   SecondPage(),
    //   ThirdPage()
    // ];
    // List<String> pagesTitles = [
    //   "Новости",
    //   "Страница 2",
    //   "Страница 3",
    //   "Страница 4",
    // ];

    List<BottomNavigationBarItem> items = [
      BottomNavigationBarItem(icon: Icon(Icons.amp_stories), label: 'Лента'),
      BottomNavigationBarItem(icon: Icon(Icons.accessibility), label: 'Друзья'),
      BottomNavigationBarItem(
          icon: Icon(Icons.video_call_outlined), label: 'ТВ'),
      BottomNavigationBarItem(icon: Icon(Icons.photo_camera), label: 'Фото')
    ];



    double width = MediaQuery.of(context).size.width;
    if (width > 420) {
      return Scaffold(
        appBar: AppBar(title: Text(_title?? "")),
        body: Row(
          children: [
            Expanded(
              child: Text(
                _title?? "",
                style: TextStyle(fontSize: 24),
              ),
            ),
            Expanded(flex: 3, child: body?? Container() ),
            MenuDrawerWidget(onMenuTap, width: width * 0.2 ,),
          ],
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          title: Text(_title?? ""),
          actions: [
            IconButton(
              icon: Icon(Icons.login),
              onPressed: () {
                setState(() {
                  body = LoginPage();
                  _title = "Login";
                });
              },
            ),
            MenuWidget()
          ],
        ),
        drawerEdgeDragWidth: width * 0.7,
        endDrawer: MenuDrawerWidget(onMenuTap, width:  width * 0.7,),
        body: body?? Container(),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currentIndex,
            showUnselectedLabels: true,
            unselectedItemColor: Colors.black26,
            selectedItemColor: Colors.deepPurpleAccent,
            items: items,
            onTap: (value) {
              onMenuTap(value);
            }
            ),
      );
    }
  }
}
