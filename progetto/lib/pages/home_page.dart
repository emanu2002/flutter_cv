import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import '../provider/user_provider.dart';
import '../utilities/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
        title: const Text("My CV"),
        centerTitle: true,
      ),
      drawer: Drawer(),// mettere poi possibilità di modifica
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(5),
            height: MediaQuery.of(context).size.height *0.4,
            decoration: const BoxDecoration( // dopo mettere immagine di sfondo
              color: Colors.grey
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: ()=> print('Dove mi trovo?'),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.location_on),
                      Text("Dove mi trovo?", style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(16.0)),
                    color: Colors.blue
                  ),
                ),
                GestureDetector(
                  onTap: ()=> _anagraphicaData(context,"Dati anagrafici"),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.library_books),
                      Text("Dati anagrafici", style: TextStyle(fontSize: 18)),
                    ],
                  ),
                )
              ],
            ),
          ),
          Wrap(
            children: [
              GestureDetector(child: _container(context, Icons.contact_page, "Come contattarmi"), onTap: () => { context.goNamed(CONTACTME) }),
              GestureDetector(child:_container(context, Icons.person_outline_outlined, "Presentazione"), onTap: () => {context.goNamed(DESCRIPTION)}),
              GestureDetector(child:_container(context, Icons.integration_instructions, "Istruzione e formazione"), onTap: () => {context.goNamed(SCHOOLANDDESCRIPTION)}),
              GestureDetector(child:_container(context, Icons.cases_outlined, "Esperienza lavorativa"), onTap: () => {}),
              GestureDetector(child:_container(context, Icons.computer, "Competenze digitali e linguistiche"), onTap: () => {}),
              GestureDetector(child:_container(context, Icons.credit_card, "Patente di guida"), onTap: () => { _card(context,"Patenti")}),
            ],
          )
        ],
      ),
    );
  }

  Widget _container(BuildContext context,IconData icona, String text){
    return Container(
      margin: const EdgeInsets.only(left:5, top:5),
      height: MediaQuery.of(context).size.height *0.30,
      width: MediaQuery.of(context).size.width *0.48,
      decoration: BoxDecoration(
        border: Border.all(width: 2)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(icona,size: 50),
          const SizedBox(height: 10),
          Text(text,textAlign: TextAlign.center, style: const TextStyle(fontSize: 25))
        ],
      ),
    );
  }

  Future<void> _anagraphicaData(BuildContext context,String title){
     return showDialog<void>(
         context: context,
         builder: (BuildContext context) {
          return AlertDialog(
            title: Text(title),
            content: Container(
              width: 50,
              height: 50,
              child: Column(
                children: [
                  Row(
                    children: [
                      const Text("Nazionalità: ", style: TextStyle(fontWeight: FontWeight.bold)),
                      Text(userProvider.usr!.nazionalita!),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      const Text("Data di nascita: ", style: TextStyle(fontWeight: FontWeight.bold)),
                      Text(userProvider.usr!.dataNascita!),
                    ],
                  ),
                ],
              ),
            ),
            actions: [
              TextButton(
                style: TextButton.styleFrom(
                  textStyle: Theme.of(context).textTheme.labelLarge,
                ),
                child: const Text('OK'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
         }
     );
  }

  Future<void> _card(BuildContext context,String title){
    return showDialog<void>(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(title),
            content: Container(
              width: 50,
              height: 90,
              child: Row(
                children: [
                  Column(
                    children: const [
                      Icon(
                        Icons.directions_car_sharp,
                        size: 50,
                      ),
                      Text("B", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25))
                    ],
                  ),
                  const SizedBox(width: 10),
                  Column(
                    children: const [
                      Icon(
                        Icons.motorcycle,
                        size: 50,
                      ),
                      Text("A1", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25))
                    ],
                  )
                ],
              ),
            ),
            actions: [
              TextButton(
                style: TextButton.styleFrom(
                  textStyle: Theme.of(context).textTheme.labelLarge,
                ),
                child: const Text('OK'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        }
    );
  }
}