import 'package:flutter/cupertino.dart';
import 'package:my_cv_flutter/model/school.dart';
import '../model/city.dart';
import '../model/user.dart';

class UserProvider extends ChangeNotifier{
  late User? usr;
  List<School> schools=[
    School(name: "Istituto d’istruzione secondario superiore ETTORE MAJORANA", description: "Diploma di Informatica e telecomunicazione", city: City(name: "Martina Franca", cap: "74015", nationality: 'Italia'), initYear: '09/2015', endYear: '06/2020'),
    School(name: "Università degli studi di Torino", description: "Laurea triennale in Informatica", city: City(name: "Torino", cap: "10024", nationality: 'Italia'), initYear: '09/2020', endYear: 'in Corso'),
  ];
  String descrizione = "Ho un ottima capacità di relazionarmi acquisita negli anni praticando diversi sport (calcio e piscina), in cui è importante avere un buon rapporto con il team.\nSono una persona socievole, creo subito un clima amichevole.\nHo svolto il compito di educatore con l’ACR e il Grest nel corso dell’anno 2019. \nPossiedo buone competenze organizzative sviluppate negli anni facendo il capitano in giochi di squadra (Calcio), ed anche facendo parte di molti lavori di gruppo a scuola e in università. \nDurante il periodo del covid-19 ho svolto attività di volontariato presso il mio paese negli enti associati agli aiuti delle persone.";


  void initState(){
    usr = User(name: "Emanuele", surname: "Carlucci",dataNascita: "23/01/2002",nazionalita: "Italiana", description: descrizione, school: schools);
  }

  void changeName(String name){
    usr!.name = name;
    notifyListeners();
  }

  void changeSurname(String surname){
    usr!.surname = surname;
    notifyListeners();
  }

  void addSchool(School school){
    schools.add(school);
    notifyListeners();
  }

  void removeSchool(School school){
    schools.remove(school);
    notifyListeners();
  }

}