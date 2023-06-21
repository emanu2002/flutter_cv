import 'dart:html';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
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
      backgroundColor: Colors.white,
      body:ListView(
        children:[
          Container(
            margin: EdgeInsets.only(left:100,right: 100, top:10),
            width: MediaQuery.of(context).size.width *0.4,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 2), // changes position of shadow
                ),
              ],
            ),
            child: GestureDetector(
                child: Image.asset('assets/images/linkedin.png'),
                onTap: ()=>{_launchURL("https://www.linkedin.com/in/emanuele-carlucci-ab4a621bb/")},
            ),
          ),
          const SizedBox(height: 30),
          Container(
            margin: EdgeInsets.only(left:100,right: 100),
            width: MediaQuery.of(context).size.width *0.5,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 2), // changes position of shadow
                ),
              ],
            ),
            child: GestureDetector(
                child: Image.asset('assets/images/gmail.jpg',),
                onTap: ()=>{
                  _sendMail("emanuelecarlucci528@gmail.com")
                }
            ),
          ),
          const SizedBox(height: 25),
          Container(
            margin: EdgeInsets.only(left:100,right: 100, top:10),
            width: MediaQuery.of(context).size.width *0.4,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 2), // changes position of shadow
                ),
              ],
            ),
            child: GestureDetector(
                child: Image.asset('assets/images/instagram.jpg'),
                onTap:()=>{
                  _instagram("emanuele.carlucci")
                }
            ),
          ),
          const SizedBox(height: 20),
          Container(
            margin: EdgeInsets.only(left:100,right: 100, top:10),
            width: MediaQuery.of(context).size.width *0.30,
            height: 80,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 2), // changes position of shadow
                ),
              ],
            ),
            child: GestureDetector(
              child: Image.asset('assets/images/phone.png'),
              onTap:()=>{
                _call("tel://3249033672")
              }
            ),
          ),
        ]
      ),
    );
  }

  _launchURL(String link) async {
    final Uri url = Uri.parse(link);
    if (!await launchUrl(url)) {
      throw Exception('Could not launch ');
    }
  }

  _sendMail(String mail) async {
    // Android and iOS
    Uri url =  Uri.parse('mailto:'+mail);
    if (!await launchUrl(url)) {
      throw Exception('Could not launch ');
    }
  }

  _call(String number) async{
    final Uri url = Uri.parse(number);
    if (!await launchUrl(url)) {
    throw Exception('Could not launch ');
    }
  }

  _instagram(String insta) async {
    // Android and iOS
    Uri url =  Uri.parse('https://www.instagram.com/'+insta+"/");
    if (!await launchUrl(url)) {
      throw Exception('Could not launch ');
    }
  }
}