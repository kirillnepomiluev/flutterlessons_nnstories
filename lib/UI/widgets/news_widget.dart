
import 'package:flutter/material.dart';
import 'package:nnstories_lesson/data/models/news_model.dart';

class NewsWidget extends StatelessWidget {
  final NewsModel newsModel;

  const NewsWidget(
      {Key? key, required this.newsModel
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
     return Container(
       width: (width > 420)?  width * 0.5 : width * 0.9,
       height: 300,
       padding: EdgeInsets.all(10),
       margin: EdgeInsets.all(8),
       decoration: BoxDecoration(
         border: Border.all(width: 1.2),
       borderRadius: BorderRadius.circular(20)
     ),
       child: Column( crossAxisAlignment: CrossAxisAlignment.stretch,
         children: [
            Text (newsModel.title),
            Expanded(child: Card(child: Image.network(newsModel.photoURL),)),
           Expanded(child: Text (newsModel.text)),
         ],
       ),
     );
  }
}
