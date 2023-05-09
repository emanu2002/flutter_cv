import 'package:flutter/cupertino.dart';
import '../model/user.dart';

class UserProvider extends ChangeNotifier{
  late User? usr;
  String descrizione = "Ho un ottima capacità di relazionarmi acquisita negli anni praticando diversi sport (calcio e piscina), in cui è importante avere un buon rapporto con il team.\nSono una persona socievole, creo subito un clima amichevole.\nHo svolto il compito di educatore con l’ACR e il Grest nel corso dell’anno 2019. \nPossiedo buone competenze organizzative sviluppate negli anni facendo il capitano in giochi di squadra (Calcio), ed anche facendo parte di molti lavori di gruppo a scuola e in università. \nDurante il periodo del covid-19 ho svolto attività di volontariato presso il mio paese negli enti associati agli aiuti delle persone.";


  void initState(){
    usr = User(name: "Emanuele", surname: "Carlucci",dataNascita: "23/01/2002",nazionalita: "Italiana", description: descrizione);
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