import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
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
                  onTap: ()=> print('Dati anagrafici'),
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
              GestureDetector(child: _container(context, Icons.contact_page, "Come contattarmi"), onTap: () => {}),
              GestureDetector(child:_container(context, Icons.person_outline_outlined, "Presentazione"), onTap: () => {}),
              GestureDetector(child:_container(context, Icons.integration_instructions, "Istruzione e formazione"), onTap: () => {}),
              GestureDetector(child:_container(context, Icons.cases_outlined, "Esperienza lavorativa"), onTap: () => {}),
              GestureDetector(child:_container(context, Icons.computer, "Competenze digitali e linguistiche"), onTap: () => {}),
              GestureDetector(child:_container(context, Icons.credit_card, "Patente di guida"), onTap: () => {}),
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
}