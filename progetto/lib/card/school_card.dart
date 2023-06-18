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
        padding: const EdgeInsets.all(5.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _row("${widget.school.initYear}-${widget.school.endYear}  ${widget.school.city.name} ${widget.school.city.nationality}",true),
            const SizedBox(height: 5),
            _row(widget.school.description,false),
            const SizedBox(height: 5),
            _row(widget.school.name,true),
            const SizedBox(height: 5),
          ],
        ),
      ),
    );
  }

  Widget _row(String text,bool bold){
    return Row(
      children: [
        Text(text,overflow: TextOverflow.ellipsis,
        style:  bold ? TextStyle(fontWeight: FontWeight.bold): TextStyle(fontWeight: FontWeight.normal),
        )
      ],
    );
  }

}