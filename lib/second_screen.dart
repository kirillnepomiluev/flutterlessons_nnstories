import 'package:flutter/material.dart';

String myString = "";


class AbstractCar{
  int speed = 10;
  String name = "SomeAbstractCarName";

  AbstractCar({this.speed = 10, this.name = "Car"}) {
   this.toPrint();
  }

  AbstractCar.full(int speedToSet, String nameToSet){
    speed = speedToSet;
    name = nameToSet;
    this.toPrint();
  }

  AbstractCar.withoutSpeed(String nameToSet){
    name = nameToSet;
    this.toPrint();
  }

  AbstractCar.withoutName(int speedToSet){
    speed = speedToSet;
  }

  void toPrint(){
    print("Машина $name со скоростью $speed км/ч");
    myString = myString +"Машина $name со скоростью $speed км/ч\n";
  }
}

// Это какая-то странная функция
void registered(int speedToSet, String nameToSet){

  if (speedToSet <= 0){
    throw Exception("Speed is negative or equal to zero.");
  }

  AbstractCar(speed: 50, name: "name");






}

void altRegistered_1({int speedToSet_1 = 10, String nameToSet_1 = "SomeAbstractCarName",
  int speedToSet_2 = 10, String nameToSet_2 = "SomeAbstractCarName"}){

  if (speedToSet_1 <= 0 || speedToSet_2 <= 0){
    throw Exception("Speed is negative or equal to zero.");
  }

  AbstractCar testCar_1 = AbstractCar();
  testCar_1.name = nameToSet_1;
  testCar_1.speed = speedToSet_1;

  testCar_1.toPrint();

  AbstractCar testCar_2 = AbstractCar();
  testCar_2.name = nameToSet_2;
  testCar_2.speed = speedToSet_2;

  testCar_2.toPrint();

}

// Это просто плохо. Ме :(
void altRegistered_2(List<int> speedsToSet, List<String> namesToSet){

  /// Lists both have to contain two elements
  /// 0 in speed is considered not existing speed
  /// "" in names is considered not existing name
  if (speedsToSet.length != 2 || namesToSet.length != 2){
    throw Exception("Lists do not contain two elements.");
  }

  if (speedsToSet[0] < 0 || speedsToSet[1] < 0){
    throw Exception("Speed is negative.");
  }

  for (int i = 0; i != 2; ++i) {
    if (speedsToSet[i] != 0 && namesToSet[i] != "") {
      AbstractCar newCar = AbstractCar.full(speedsToSet[1], namesToSet[i]);
      newCar.toPrint();
    } else if (speedsToSet[i] == 0 && namesToSet[i] != "") {
      AbstractCar newCar = AbstractCar.withoutSpeed(namesToSet[i]);
      newCar.toPrint();
    } else if (speedsToSet[i] != 0 && namesToSet[1] == "") {
      AbstractCar newCar = AbstractCar.withoutName(speedsToSet[i]);
      newCar.toPrint();
    }
  }
}

void altRegisteredFinal(List<int> speedsToSet, List<String> namesToSet){

  /// The lengths of speedsToSet and namesToSet should be equal
  /// 0 in speed is considered not existing speed
  /// "" in names is considered not existing name
  if (speedsToSet.length != namesToSet.length){
    throw Exception("The lengths of speedsToSet and namesToSet are not equal.");
  }

  for (int i in speedsToSet){
    if (i < 0){
      throw Exception("Speed is negative.");
    }
  }

  for (int i = 0; i != speedsToSet.length; ++i){

    AbstractCar newCar = AbstractCar();

    if (speedsToSet[i] != 0){
      newCar.speed = speedsToSet[i];
    }

    if (namesToSet[i] != ''){
      newCar.name = namesToSet[i];
    }

    newCar.toPrint();

  }

}


void main(){
  myString = "";
  // Первая задача
  try {
    print("1.1");
    registered(10, "BruhMobile");

    print("1.2");
    registered(12, "CringeMobile");

    print("1.3");
    registered(-12, "12");

  } catch (e) {
    print("Oops, smth went wrong because of the following exception:\n" + e.toString());
  }

  print("");

  // Вторая задача
  try {
    print("2.1");
    altRegistered_1(speedToSet_1: 12, nameToSet_1: "Ok", speedToSet_2: 123, nameToSet_2: "Not ok");

    print("2.2");
    altRegistered_2([0, 123], ["Cool stuff", ""]);

    print("2.3");
    altRegisteredFinal([12, 24], ["12 km per hour car", "24 km per hour car"]);
  } catch (e) {
    print("Oops, smth went wrong because of the following exception:\n" + e.toString());
  }

  print("");

  try {
    print("3.1");
    altRegisteredFinal([1, 2, 3], ["1car", "2car", "3car"]);

    print("3.2");
    altRegisteredFinal([0, 0, 0], ["", "", ""]);

    print("3.3");
    altRegisteredFinal([1, 0, 0], ["", "Bob", ""]);
  } catch (e) {
    print("Oops, smth went wrong because of the following exception:\n" + e.toString());
  }

}



class SecondScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
     main();
     double width = MediaQuery.of(context).size.width;
     if (width > 420) {
       return Scaffold(
         appBar: AppBar(title: Text("Заголовок экрана")),
         body: Center(child: SingleChildScrollView(child: Text(myString,
           style: TextStyle(fontSize: 24),)),),
       );
     } else {
       return Scaffold(
         appBar: AppBar(title: Text("Заголовок экрана")),
        drawerEdgeDragWidth: width*0.7,
        endDrawer: Container(width: width*0.7 , color: Colors.redAccent,
            child: Column(
              children: [
                SizedBox(height: 70,),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text("Страница1"),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text("Страница2"),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text("Страница3"),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text("Страница4"),
                ),
              ],
            ),
        ),
         body: Center(child: SingleChildScrollView(child: Text(myString,
         style:  TextStyle(fontSize: 10),)),),
       );
     }
  }


}
