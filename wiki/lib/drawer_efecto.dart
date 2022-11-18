import 'package:flutter/material.dart';
/* import 'package:material_design_icons_flutter/material_design_icons_flutter.dart'; */

class Drawer_Efecto extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Efectos de Cartas'),
        backgroundColor: Colors.green[300],
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Alpinista', style: TextStyle(fontSize : 25,)),
            subtitle: Text('Cuando despliegas o añades una unidad con alpinista, ésta obtiene +1/+1 por cada otra unidad alpinista que controles.',
               style: TextStyle(fontSize : 15,fontStyle: FontStyle.italic)),
            trailing: Icon(Icons.receipt_long_rounded, color: Color.fromARGB(255, 87, 188, 62), size: 35,),
          ),
          Divider(thickness: 1.5, color: Colors.black),
          ListTile(
            title: Text('Emboscada', style: TextStyle(fontSize : 25,)),
            subtitle: Text('Cuando una unidad con Emboscada es atacada, la unidad Emboscada hace daño al atacante primero.',
               style: TextStyle(fontSize : 15,fontStyle: FontStyle.italic)),
            trailing: Icon(Icons.receipt_long_rounded, color: Color.fromARGB(255, 87, 188, 62), size: 35,),
          ),
          Divider(thickness: 1.5, color: Colors.black),
          ListTile(
            title: Text('Blitz',style: TextStyle(fontSize: 25),),
            subtitle: Text('Las unidades con Blitz pueden mover o atacar en el turno en que entran en juego.',
               style: TextStyle(fontSize: 15,fontStyle: FontStyle.italic)),
            trailing: Icon(Icons.receipt_long_rounded, color: Color.fromARGB(255, 87, 188, 62), size: 35),
          ),
          Divider(thickness: 1.5, color: Colors.black),
          ListTile(
            title: Text('Despliegue',style: TextStyle(fontSize: 25),),
            subtitle: Text('Cuando una unidad con Despliegue se juega normalmente desde tu mano, se activará su efecto de Despliegue tal y como está escrito en la carta.',
               style: TextStyle(fontSize: 15,fontStyle: FontStyle.italic)),
            trailing: Icon(Icons.receipt_long_rounded, color: Color.fromARGB(255, 87, 188, 62), size: 35),
          ),
          Divider(thickness: 1.5, color: Colors.black),
        ],
      ),
    );
  }
}