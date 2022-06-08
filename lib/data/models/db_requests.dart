import 'package:nnstories_lesson/data/models/news_model.dart';

Future<List<NewsModel>> getNewsFromDBTest() async {
// тут будет запрос к базе. после чего запрос вернет json
// мы уго спарсим и преобразуем в массив МАП
 await Future.delayed(Duration(seconds: 3));
 List<NewsModel> listMewsModel = [];
 listOfMapsNews.forEach((element) {
   listMewsModel.add(NewsModel.fromMap(element));
 });
 return listMewsModel;
}