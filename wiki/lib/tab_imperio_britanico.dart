import 'package:flutter/material.dart';

class Tab_Imperio_Britanico extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
/*       appBar: AppBar(
        title: Text('Imperio británico',style: TextStyle(fontSize: 40, fontStyle: FontStyle.italic), textAlign: TextAlign.center,),
        backgroundColor: Colors.black,
      ), */
      body: Center(
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(color: Colors.blue[200],borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Column(
                children: [
                  Image(
                    image: AssetImage('assets/images/atlantic_convoy.jpg'),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 5,bottom: 5),
                    child: Text('SEÑORES DE LOS CIELOS Y LOS OCÉANOS',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),textAlign: TextAlign.center,)),
                  Container(
                    padding: EdgeInsets.only(top: 5,bottom: 5),
                    child: Text('l inicio de la guerra pilló desprevenido al vasto imperio, pero se adaptó rápidamente a los nuevos tipos de guerra. Con su formidable flota, sus aviones avanzados y su terquedad sin igual, los ejércitos británicos nunca concedieron ni un centímetro sin luchar. Además, los británicos tenían un as en la manga a la hora de obtener información. Para los Aliados, esta sería el arma más poderosa de todas.',
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