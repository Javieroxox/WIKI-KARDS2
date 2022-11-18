import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'drawer_cartas.dart';
import 'drawer_contacto.dart';
import 'drawer_efecto.dart';

/* import 'drawer_nacion.dart'; */

import 'drawer_tab_nacion.dart';
import 'drawer_tutorial.dart';


class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(
        title: Text('C1 DAM020-2022-2 - {Kards Wiki}', style: TextStyle(fontSize: 16),),
        backgroundColor: Colors.green[300],
                actions: [
          PopupMenuButton(
            onSelected:(opcion){
              switch(opcion){
                case 'about':
                  print('about');
                  break;
                case 'logout':
                  print('logout');
                  break;
              }
            },
            itemBuilder: (context)=>[
              PopupMenuItem(
                child: Text('Acerca de...'),
                value: 'about',),
              PopupMenuItem(
                child: Text('Salir'),
                value: 'logout',
              ),
            ],
          ),
        ],
      ),
      body: 
      Center(
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(color: Colors.grey[500],borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Column(
                children: [
                  Image(
                    image: AssetImage('assets/images/Kardslogo.jpg'),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Text('El juego de cartas de la Segunda Guerra Mundial es un emocionante juego de cartas coleccionables gratuito ambientado en la Segunda Guerra Mundial, lleno de estrategia, táctica, acción y diversión. Juega como cualquiera de las principales potencias de la Segunda Guerra Mundial y participa en épicas batallas contra otros jugadores, o como jugador individual contra la astuta IA. Las batallas se ganan con astucia, táctica, experiencia y estrategia.', 
                  style: TextStyle(fontSize: 24),),
                ],
              ),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children:[
            DrawerHeader(child: 
             Column(children: [
                Container(
                  height: 100,
                  width: 100,
                    decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(image: AssetImage('assets/images/Monty.jpg')),
                    border: Border.all(width: 2.0, color: Colors.black)
                  ),
               ),
             ]),
            ),
            ListTile(
              leading: Icon(MdiIcons.earth, color: Colors.black, size: 35,),
              title: Text('Tutorial', style: TextStyle(fontSize : 20,)),
              onTap: (){
                _NavigaTor(context, 1);
              },
            ),
            Divider(thickness: 1, color: Colors.black),
            ListTile(
              leading: Icon(MdiIcons.blur, color: Colors.black, size: 35,),
              title: Text('Naciones', style: TextStyle(fontSize : 20,)),
              onTap: (){
                _NavigaTor(context, 2);
              },
            ),
            Divider(thickness: 1, color: Colors.black),
            ListTile(
              leading: Icon(MdiIcons.bookOpenVariant, color: Colors.black, size: 35,),
              title: Text('Efectos', style: TextStyle(fontSize : 20,)),
              onTap: (){
                _NavigaTor(context, 3);
              },
            ),
            Divider(thickness: 1, color: Colors.black),
            ListTile(
              leading: Icon(MdiIcons.card, color: Colors.black, size: 35,),
              title: Text('Cartas', style: TextStyle(fontSize : 20,)),
              onTap: (){
                _NavigaTor(context, 4);
              },
            ),
            Divider(thickness: 1, color: Colors.black),
            ListTile(
              leading: Icon(MdiIcons.accountBoxOutline, color: Colors.black, size: 35,),
              title: Text('Contacto', style: TextStyle(fontSize : 20,)),
              onTap: (){
                _NavigaTor(context, 5);
              },
            ),
          ],
        ),
      ),
    );
  }

  void _NavigaTor(BuildContext context, int page){
    List<Widget> pages=[
      Drawer_Tutorial(),      
      Drawer_Tab_Nacion(),
      Drawer_Efecto(),
      Drawer_Cartas(),
      Drawer_Contacto(),
    ];

    final route = MaterialPageRoute(builder: (context){
      return pages[page-1];
    });
    Navigator.pop(context);
    Navigator.push(context,route);
  }
}