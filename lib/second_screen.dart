class User {
  String name = "Пользователь";
  String phone = "";
  DateTime birthday = DateTime.now();
  bool online = false;
  DateTime lastSignIn =   DateTime.now();

  void signIn() {
    online = true;
    lastSignIn = DateTime.now();
  }

  void signUp() {
    print ("Пользователеь $name успешно зарегитсрирован!" );
  }
}

void createUser ({String name = "Пользователь", String phone = "" , required DateTime timeOfBirthday  }) {
  User newUser = User();
  newUser.name = name;
  newUser.phone = phone;


  newUser.signUp();

  List<String> array = ["asd", "sdfdf"];



  User newUser2 = User();
  newUser2.name = "федор";
  newUser2.phone = "+7999234234234";

  newUser2.signUp();




}

