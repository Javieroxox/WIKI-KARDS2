import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
/* import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
 */
class Tab_Alemania extends StatefulWidget {
  Tab_Alemania({Key? key}) : super(key: key);

  @override
  State<Tab_Alemania> createState() => _Tab_AlemaniaState();
}

class _Tab_AlemaniaState extends State<Tab_Alemania> {

  int _stackindex = 0;
  int _grado = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
/*       appBar: AppBar(
        title: Text('Alemania',style: TextStyle(fontSize: 40, fontStyle: FontStyle.italic), textAlign: TextAlign.center,),
        backgroundColor: Colors.black,
      ), */
      body: Center(
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(color: Colors.grey[200],borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Column(
                children: [
                  Image(
                    image: AssetImage('assets/images/panzer_35t.jpg'),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 5,bottom: 5),
                    child: Text('LOS PIONEROS DE LA GUERRA RELÁMPAGO',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),),
                  Container(
                    padding: EdgeInsets.only(top: 5,bottom: 5),
                    child: Text('La Wehrmacth alemana rendía de maravilla en el ataque, donde aplastaba a sus enemigos con tácticas de guerra relámpago, unidades blindadas que ejercían mucha presión y diversas formaciones mecanizadas. Su doctrina favorita era la de las batallas de aniquilación. Dicho esto, podía resultar muy peligroso subestimar las capacidades defensivas del ejército alemán. En comparación con los Aliados, Alemania no tenía muchos barcos; sin embargo, en las profundidades del océano vagaban unas temibles manadas de lobos que estaban preparadas para atacar a su presa.',
                      style: TextStyle(fontSize: 20),textAlign: TextAlign.center),
                  ),
                  Row(
                    children: [
                       Container(
                        padding: EdgeInsets.all(5),
                        width: 50,
                        height: 50,
                        color: Colors.grey[300],
                        child: 
                          IndexedStack(
                            index: _grado,
                            alignment: Alignment.center,
                            children:[
                              Container(
                                alignment: Alignment.center,
                                width: 100,
                                height: 100,
                                color: Colors.grey[300],
                                child: Icon(MdiIcons.star, color: Colors.red[300]),
                              ),
                              Container(
                                alignment: Alignment.center,
                                width: 100,
                                height: 100,
                                color: Colors.grey[300],
                                child: Icon(MdiIcons.star, color: Colors.yellow[300]),
                              ),
                              Container(
                                alignment: Alignment.center,
                                width: 100,
                                height: 100,
                                color: Colors.grey[300],
                                child: Icon(MdiIcons.star, color: Colors.green[300]),
                              ),
                            ],
                          ),
                      ),        
                      Container(
                        padding: EdgeInsets.only(left: 70),
                        margin: EdgeInsets.only(top: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(
                              onPressed: (){
                                setState(() {
                                  if (_stackindex < 100)
                                    _stackindex = _stackindex + 1;
                                  if (_stackindex < 10) {
                                    _grado = 0;
                                  } else if
                                     (_stackindex > 20 && _stackindex < 30){
                                      _grado = 1;
                                  } else {
                                    if (_stackindex > 30) 
                                      _grado = 2;
                                  }
                                });
                              }, 
                              child: Text('Partidas Jugadas'),
                            ),
                          ],
                        ),
                      ),
                    ],
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
