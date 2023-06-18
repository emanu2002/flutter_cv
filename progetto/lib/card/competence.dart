import 'package:flutter/material.dart';
import '../model/school.dart';

class CompetenceCard extends StatefulWidget{
  String competence;
  CompetenceCard({super.key, required this.competence});

  @override
  _CompetenceCardState createState() => _CompetenceCardState();
}

class _CompetenceCardState extends State<CompetenceCard>{

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(widget.competence,width: 70,height: 70),
          ],
        ),
      ),
    );
  }

}