import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/user_provider.dart';

class DescriptionPage extends StatefulWidget {
  const DescriptionPage({super.key});

  @override
  _DescriptionPageState createState() => _DescriptionPageState();
}

class _DescriptionPageState extends State<DescriptionPage>{
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
        title: const Text("PRESENTAZIONE"),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: 50,
                margin: EdgeInsets.only(top:MediaQuery.of(context).size.height *0.02),
                decoration: BoxDecoration(
                    color: Colors.grey
                ),
              ),
              Container(
                  height: 50,
                  margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.03),
                  decoration: BoxDecoration(
                      color: Colors.white
                  )
              ),
              Container(
                  margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.05, left: 15, right: 15),
                  child: Column(
                    children: [
                      Text(userProvider.usr!.description , style: TextStyle(color: Colors.black, fontSize: 18)),
                    ],
                  ),
              )
            ],
          ),
        ],
      ),
    );
  }

}