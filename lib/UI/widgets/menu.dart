import 'package:flutter/material.dart';
import 'package:nnstories_lesson/UI/pages/first_screen.dart';
import 'package:nnstories_lesson/UI/pages/forsth_page.dart';
import 'package:nnstories_lesson/UI/pages/second_page.dart';
import 'package:nnstories_lesson/UI/pages/third_page.dart';

class MenuDrawerWidget extends StatelessWidget {
  final  Function (int index) onTileTap;
  final double width;
  MenuDrawerWidget(this.onTileTap, {Key? key, this.width = 200}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      color: Colors.redAccent,
      child: Column(
        children: [
          SizedBox(
            height: 70,
          ),
          ListTile(
            title: Text("Новости"),
            onTap: ()  { onTileTap(0);
            Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text("Страница2"),
            onTap: ()  { onTileTap(1);
            Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text("Страница3"),
            onTap: ()  { onTileTap(2);
            Navigator.pop(context);
            },

          ),
          ListTile(
            title: Text("Страница4"),
            onTap: ()  { onTileTap(3);
            Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }

}


