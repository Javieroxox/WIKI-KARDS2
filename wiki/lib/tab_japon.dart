import 'package:flutter/material.dart';

class Tab_Japon extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
/*       appBar: AppBar(
        title: Text('Japón',style: TextStyle(fontSize: 40, fontStyle: FontStyle.italic), textAlign: TextAlign.center,),
        backgroundColor: Colors.black,
      ), */
      body: Center(
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(color: Colors.orange[200],borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Column(
                children: [
                  Image(
                    image: AssetImage('assets/images/naval_operation.jpg'),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 5,bottom: 5),
                    child: Text('EL SOL SALE POR EL ESTE',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),textAlign: TextAlign.center,)),
                  Container(
                    padding: EdgeInsets.only(top: 5,bottom: 5),
                    child: Text('El Ejército Imperial Japonesa y la Armada Imperial Japonesa fueron completamente subestimados por los Aliados, pero barrieron el Sudeste Asiático y el Pacífico en su propia guerra.  En un primer momento, los japoneses tenían la superioridad aérea total en la zona, así como una temible armada que contaba con los acorazados más pesados que se hubiesen construido. Cuando combatían a la defensiva para proteger su isla natal, los japoneses se atrincheraban y luchaban hasta el final. Cuando no bastaba con eso, se veían impulsados por el honor y la lealtad y ningún sacrificio estaba considerado como demasiado grande.',
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