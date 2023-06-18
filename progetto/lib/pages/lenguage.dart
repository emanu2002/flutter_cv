import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../card/competence.dart';
import '../provider/user_provider.dart';

class LenguagePage extends StatefulWidget{
  const LenguagePage({super.key});

  @override
  _LenguagePageState createState() => _LenguagePageState();
}

class _LenguagePageState extends State<LenguagePage>{
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
      body: ListView(
        children: [
          for(int i=0;i<userProvider.competenceLenguages.length;i++)
            CompetenceCard(competence: userProvider.competenceLenguages[i])
        ],
      ),
    );
  }
}