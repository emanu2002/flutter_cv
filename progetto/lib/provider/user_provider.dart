import 'package:flutter/cupertino.dart';
import 'package:my_cv_flutter/model/school.dart';
import '../model/city.dart';
import '../model/user.dart';
import '../model/work.dart';

class UserProvider extends ChangeNotifier{
  late User? usr;
  List<School> schools=[
    School(name: "Istituto d’istruzione secondario superiore \nETTORE MAJORANA", description: "Diploma di Informatica e telecomunicazione", city: City(name: "Martina Franca", cap: "74015", nationality: 'Italia'), initYear: '09/2015', endYear: '06/2020'),
    School(name: "Università degli studi di Torino", description: "Laurea triennale in Informatica", city: City(name: "Torino", cap: "10024", nationality: 'Italia'), initYear: '09/2020', endYear: 'in Corso'),
  ];
  List<Work> works=[
    Work(employeeName: 'MuBA', city: City(name: "Martina Franca", cap: "74015", nationality: 'Italia'),description: "• Creazione software peril museo interno.\n• Catalogazione libri.",initDate: "4/2018",endDate: "5/2018",tipe: "Alternanza Scuola lavoro"),
    Work(city: City(name: "Torino", cap: "10024", nationality: 'Italia'),employeeName: "EvoHunt",initDate: "30/03/2023",endDate: "9/05/2023",tipe: "Stage",description: "Mi sono occupato della crazione dell’applicazione in flutter"),
  ];

  List<String> competenceLenguages=[
    'assets/images/italia.jpg',
    'assets/images/inglese.png'
  ];

  List<String> competenceDigital=[
    'assets/images/flutter.png',
    'assets/images/dart.png',
    'assets/images/java.png',
    'assets/images/javascript.png',
    'assets/images/vue.png',
    'assets/images/html.png',
    'assets/images/css.png',
    'assets/images/git.png',
    'assets/images/php.png',
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