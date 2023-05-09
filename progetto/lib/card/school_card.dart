import 'package:flutter/material.dart';
import '../model/school.dart';

class schoolCard extends StatefulWidget{
  School school;
  schoolCard({super.key, required this.school});

  @override
  _schoolCardState createState() => _schoolCardState();
}

class _schoolCardState extends State<schoolCard>{

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            _row("${widget.school.initYear}-${widget.school.endYear}  ${widget.school.city.name} ${widget.school.city.nationality}"),
            const SizedBox(height: 5),
            _row(widget.school.description),
            const SizedBox(height: 5),
            _row(widget.school.name),
            const SizedBox(height: 5),
          ],
        ),
      ),
    );
  }

  Widget _row(String text){
    return Row(
      children: [
        Text(text)
      ],
    );
  }

}