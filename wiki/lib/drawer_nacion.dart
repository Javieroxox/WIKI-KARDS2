import 'package:flutter/material.dart';

class Drawer_Nacion extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Naciones', style: TextStyle(fontSize: 25, color: Colors.indigo),),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(color: Colors.grey[200],borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Column(
                children: [
                  Text('Alemania',style: TextStyle(fontSize: 40, fontStyle: FontStyle.italic), textAlign: TextAlign.center,),
                  Image(
                    image: AssetImage('assets/images/panzer_35t.jpg'),
                  ),
                  Text(''),
                  Text('LOS PIONEROS DE LA GUERRA RELÁMPAGO',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                  Text(''),
                  Text('La Wehrmacth alemana rendía de maravilla en el ataque, donde aplastaba a sus enemigos con tácticas de guerra relámpago, unidades blindadas que ejercían mucha presión y diversas formaciones mecanizadas. Su doctrina favorita era la de las batallas de aniquilación. Dicho esto, podía resultar muy peligroso subestimar las capacidades defensivas del ejército alemán. En comparación con los Aliados, Alemania no tenía muchos barcos; sin embargo, en las profundidades del océano vagaban unas temibles manadas de lobos que estaban preparadas para atacar a su presa.',
                    style: TextStyle(fontSize: 20),textAlign: TextAlign.center,),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(color: Colors.green[200],borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Column(
                children: [
                  Text('Estados Unidos',style: TextStyle(fontSize: 40, fontStyle: FontStyle.italic), textAlign: TextAlign.center,),
                  Image(
                    image: AssetImage('assets/images/tbf1_avenger.jpg'),
                  ),
                  Text(''),
                  Text('PRODUCIR MÁS QUE LOS DEMÁS, TENER MÁS ARMAMENTO Y SEMBRAR LA MUERTE DESDE EL CIELO',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                  Text(''),
                  Text('Aunque se unieron a la guerra más tarde que las demás superpotencias, los Estados Unidos se pasaron años preparando sus cadenas de montaje y apoyando a sus aliados. Al superar en producción a sus enemigos del Eje, los estadounidenses pudieron lanzar operaciones de ataque de proporciones épicas en todos los teatros. Su fortaleza voladora recorría los cielos... y no era para entregar el correo.',
                    style: TextStyle(fontSize: 20),textAlign: TextAlign.center,),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(color: Colors.orange[200],borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Column(
                children: [
                  Text('Japón',style: TextStyle(fontSize: 40, fontStyle: FontStyle.italic), textAlign: TextAlign.center,),
                  Image(
                    image: AssetImage('assets/images/naval_operation.jpg'),
                  ),
                  Text(''),
                  Text('EL SOL SALE POR EL ESTE',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                  Text(''),
                  Text('El Ejército Imperial Japonesa y la Armada Imperial Japonesa fueron completamente subestimados por los Aliados, pero barrieron el Sudeste Asiático y el Pacífico en su propia guerra.  En un primer momento, los japoneses tenían la superioridad aérea total en la zona, así como una temible armada que contaba con los acorazados más pesados que se hubiesen construido. Cuando combatían a la defensiva para proteger su isla natal, los japoneses se atrincheraban y luchaban hasta el final. Cuando no bastaba con eso, se veían impulsados por el honor y la lealtad y ningún sacrificio estaba considerado como demasiado grande.',
                    style: TextStyle(fontSize: 20),textAlign: TextAlign.center,),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(color: Colors.red[200],borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Column(
                children: [
                  Text('Unión Soviética',style: TextStyle(fontSize: 40, fontStyle: FontStyle.italic), textAlign: TextAlign.center,),
                  Image(
                    image: AssetImage('assets/images/katyusha.jpg'),
                  ),
                  Text(''),
                  Text('EL PODEROSO EJÉRCITO ROJO',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                  Text(''),
                  Text('Al inicio de la guerra, y por mucho que fuesen más numerosas sobre el papel, los ejércitos de la Unión Soviética estaban muy mal equipados, entrenados y organizados. No obstante, esto fue algo que no tardaría en cambiar. Forjado a sangre y fuego durante la Gran Guerra Patriótica, el Ejército Rojo no tardaría en convertirse en una imparable máquina de guerra.  Alimentados por una cantidad aparentemente ilimitada de hombres y recursos naturales, los soviéticos, poco a poco pero de manera implacable, lograron expulsar a sus enemigos de la Madre Rusia... y adentrarse en territorio enemigo.',
                    style: TextStyle(fontSize: 20),textAlign: TextAlign.center,),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(color: Colors.blue[200],borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Column(
                children: [
                  Text('Imperio británico',style: TextStyle(fontSize: 40, fontStyle: FontStyle.italic), textAlign: TextAlign.center,),
                  Image(
                    image: AssetImage('assets/images/atlantic_convoy.jpg'),
                  ),
                  Text(''),
                  Text('SEÑORES DE LOS CIELOS Y LOS OCÉANOS',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                  Text(''),
                  Text('l inicio de la guerra pilló desprevenido al vasto imperio, pero se adaptó rápidamente a los nuevos tipos de guerra. Con su formidable flota, sus aviones avanzados y su terquedad sin igual, los ejércitos británicos nunca concedieron ni un centímetro sin luchar. Además, los británicos tenían un as en la manga a la hora de obtener información. Para los Aliados, esta sería el arma más poderosa de todas.',
                    style: TextStyle(fontSize: 20),textAlign: TextAlign.center,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}