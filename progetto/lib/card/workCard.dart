import 'package:flutter/material.dart';
import '../model/school.dart';
import '../model/work.dart';

class workCard extends StatefulWidget{
  Work work;
  workCard({super.key, required this.work});

  @override
  _workCardState createState() => _workCardState();
}

class _workCardState extends State<workCard>{

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Text(widget.work.initDate+"-"+widget.work.endDate, style: TextStyle(fontWeight: FontWeight.bold)),
                const SizedBox(width: 5),
                Text(widget.work.city.name+", "+widget.work.city.nationality)
              ],
            ),
            const SizedBox(height: 5),
            Text(widget.work.tipe,style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 3),
            Text(widget.work.employeeName),
            const SizedBox(height: 3),
            Container(
              width: MediaQuery.of(context).size.width *0.95,
              child: Text(widget.work.description)
            ),
          ],
        ),
      ),
    );
  }

}