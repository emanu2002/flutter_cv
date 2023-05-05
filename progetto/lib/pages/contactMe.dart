import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/user_provider.dart';

class ContactMePage extends StatefulWidget {
  const ContactMePage({super.key});

  @override
  _ContactMeState createState() => _ContactMeState();
}

class _ContactMeState extends State<ContactMePage> {
  late UserProvider userProvider;

  void initState(){
    userProvider = Provider.of<UserProvider>(context, listen: false);
    userProvider.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      userProvider.addListener(() { if (mounted) setState(() {}); });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("COME CONTATTARMI"),
        centerTitle: true,
      ),
      body:Column(
        children:[
          _line(context,Icons.mail, "emanuelecarlucci528@gmail.com"),
          _line(context,Icons.phone, "3249033672"),
          _line(context,Icons.link, "https://www.linkedin.com/in/emanuele-carlucci-ab4a621bb/"),
          _line(context,Icons.question_answer_rounded, "emanuele.carlucci"),
        ]
      ),
    );
  }

  Widget _line(BuildContext context, IconData icon, String reference){
    return Container(
      width: MediaQuery.of(context).size.width * 0.99,
      child: Row(
        children: [
          Icon(icon),
          TextButton(
            onPressed: ()=>{

            },
            child: Text(reference,overflow: TextOverflow.visible,)
          )
        ],
      ),
    );
  }
}