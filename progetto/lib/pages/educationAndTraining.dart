
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../card/school_card.dart';
import '../provider/user_provider.dart';

class SchoolAndTrainingPage extends StatefulWidget{
  const SchoolAndTrainingPage({super.key});

  @override
  _SchoolAndTrainingPageState createState() => _SchoolAndTrainingPageState();
}

class _SchoolAndTrainingPageState extends State<SchoolAndTrainingPage>{
  late UserProvider userProvider;

  void initState(){
    userProvider = Provider.of<UserProvider>(context, listen: false);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      userProvider.addListener(() { if (mounted) setState(() {}); });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ISTRUZIONE E FORMAZIONE"),
      ),
      body: ListView(
        children: [
          for(int i=0;i<userProvider.schools.length;i++)
            schoolCard(school: userProvider.schools[i])
        ],
      ),
    );
  }
}