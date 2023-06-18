import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../card/competence.dart';
import '../provider/user_provider.dart';

class DigitalPage extends StatefulWidget{
  const DigitalPage({super.key});

  @override
  _DigitalPageState createState() => _DigitalPageState();
}

class _DigitalPageState extends State<DigitalPage>{
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
          for(int i=0;i<userProvider.competenceDigital.length;i++)
            CompetenceCard(competence: userProvider.competenceDigital[i])
        ],
      ),
    );
  }
}