import 'package:flutter/material.dart';

class Tab_Union_Sovietica extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
/*       appBar: AppBar(
        title: Text('Unión Soviética',style: TextStyle(fontSize: 40, fontStyle: FontStyle.italic), textAlign: TextAlign.center,),
        backgroundColor: Colors.black,
      ), */
      body: Center(
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(color: Colors.red[200],borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Column(
                children: [
                  Image(
                    image: AssetImage('assets/images/katyusha.jpg'),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 5,bottom: 5),
                    child: Text('EL PODEROSO EJÉRCITO ROJO',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),textAlign: TextAlign.center,)),
                  Container(
                    padding: EdgeInsets.only(top: 5,bottom: 5),
                    child: Text('Al inicio de la guerra, y por mucho que fuesen más numerosas sobre el papel, los ejércitos de la Unión Soviética estaban muy mal equipados, entrenados y organizados. No obstante, esto fue algo que no tardaría en cambiar. Forjado a sangre y fuego durante la Gran Guerra Patriótica, el Ejército Rojo no tardaría en convertirse en una imparable máquina de guerra.  Alimentados por una cantidad aparentemente ilimitada de hombres y recursos naturales, los soviéticos, poco a poco pero de manera implacable, lograron expulsar a sus enemigos de la Madre Rusia... y adentrarse en territorio enemigo.',
                      style: TextStyle(fontSize: 20),textAlign: TextAlign.center,),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}