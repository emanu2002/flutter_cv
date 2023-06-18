import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'digital.dart';
import 'lenguage.dart';

class CompetencePage extends StatefulWidget{
  const CompetencePage({super.key});

  @override
  _CompetencePageState createState() => _CompetencePageState();
}

class _CompetencePageState extends State<CompetencePage>{
  String currentPage="DIGITALI";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("COMPETENZE"),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.white, // foreground
                  ),
                  onPressed: () {
                    setState(() {
                      currentPage = 'DIGITALI';
                    });
                  },
                  child: Text('DIGITALI',style: TextStyle(color: currentPage == 'DIGITALI'? Colors.blue: Colors.black)),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.white, // foreground
                  ),
                  onPressed: () {
                    setState(() {
                      currentPage = 'LINGUISTICHE';
                    });
                  },
                  child: Text('LINGUISTICHE',style: TextStyle(color: currentPage == 'LINGUISTICHE'? Colors.blue: Colors.black)),
                ),
              ],
            ),
          ),
          Expanded(flex:1,child: _page()),
        ],
      ),
    );
  }

  Widget _page(){
    if(currentPage == "DIGITALI"){
      return DigitalPage();
    }else{
      return LenguagePage();
    }
  }
}