import 'package:my_cv_flutter/model/city.dart';

class Work{
  String employeeName;
  String initDate;
  String endDate;
  String tipe;
  String description;
  City city;

  Work({required this.employeeName,required this.initDate,required this.endDate,required this.tipe,required this.description, required this.city});

}