import 'package:my_cv_flutter/model/school.dart';

class User{
  String name;
  String surname;
  String dataNascita;
  String nazionalita;
  String description;
  List<School> school;

  User({required this.name, required this.surname, required this.dataNascita, required this.nazionalita,required this.description, required this.school});
}