 class NewsModel {
    String title;
    String text;
    String photoURL;
    int id;

    NewsModel(
       {this.title = "Заголовок",
         this.text =
         """      текст
      текст
      новость 
      супер новость
      """,
         this.photoURL = "",
         this.id = 99});

    NewsModel.fromMap(Map<String, dynamic> dataMap,{
        this.title = "", this.text = "", this.photoURL="", this.id=99}) {
     this.text = dataMap["text"]??"";
     this.title = dataMap["title"]??"";
     this.id = dataMap["id"]??99;
     this.photoURL = dataMap["photoURL"]??"";
   }


 }

 Map<String, dynamic> map = {
  "text" : "это текст первой новости",
  "title" : "это Заголовок первой новости",
  "id" : 5,
   "id2" :2,
  "photoURL" : "это текст первой новости",
  "moderated" : true
 };
 var b = map["id"]??1;
 void setIDToMap(int a) {
   map["id"] = a;

 }


 // если нет в map значения по ключу "id", то b = 1;,
 // если есть то вернет это значение.


 List <dynamic> list = [
   "это текст первой новости",
   "это Заголовок первой новости",
   1,
   "это текст первой новости",
   true
 ];
 var a = list[2];


 List <Map<String, dynamic>> listOfMapsNews = [
   { "text" : "это текст первой новости",
     "title" : "это Заголовок первой новости",
     "id" : 1,
     "photoURL" : "https://www.vremyan.ru/_data/objects/0049/2721/icon.jpg",
     "moderated" : true},
   { "text" : "это текст второй новости",
     "title" : "это Заголовок второй новости",
     "id" : 2,
     "photoURL" : "https://newsnn.ru/attachments/c1b8fc58d5c730449ad9669e0130709833b67943/store/crop_and_fill/0/333/780/438/1200/630/5dade3bc8c764bb3338444067cf50aeb5e2916f9f3f2ec06baa036c1ad54/5dade3bc8c764bb3338444067cf50aeb5e2916f9f3f2ec06baa036c1ad54.jpg",
     "moderated" : true},
   {"text" : "это текст третьей новости",
     "title" : "это Заголовок третьей новости",
     "id" : 3,
     "photoURL" : "https://www.niann.ru/_data/objects/0057/9732/icon.jpg",
     "moderated" : true},
   {"text" : "это текст четвертой новости",
     "title" : "это Заголовок четвертой новости",
     "id" : 4,
     "photoURL" : "https://www.niann.ru/_data/objects/0057/9732/icon.jpg",
     "moderated" : true}
 ];
