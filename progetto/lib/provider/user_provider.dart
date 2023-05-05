import 'package:flutter/cupertino.dart';
import '../model/user.dart';

class UserProvider extends ChangeNotifier{

  late User? usr;

  void initState(){
    usr = User(name: "Emanuele", surname: "Carlucci",dataNascita: "23/01/2002",nazionalita: "Italiana");
  }

  void changeName(String name){
    usr!.name = name;
    notifyListeners();
  }

  void changeSurname(String surname){
    usr!.surname = surname;
    notifyListeners();
  }
}