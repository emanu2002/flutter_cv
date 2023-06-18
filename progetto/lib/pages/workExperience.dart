import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../card/workCard.dart';
import '../provider/user_provider.dart';

class WorkExperiencePage extends StatefulWidget{
  const WorkExperiencePage({super.key});

  @override
  _WorkExperiencePageState createState() => _WorkExperiencePageState();
}

class _WorkExperiencePageState extends State<WorkExperiencePage>{
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
        title: Text("ESPRIENZE LAVORATIVE"),
      ),
      body: ListView(
        children: [
          for(int i=0;i<userProvider.works.length;i++)
            workCard(work: userProvider.works[i])
        ],
      ),
    );
  }
}