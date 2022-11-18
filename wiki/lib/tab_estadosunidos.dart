import 'package:flutter/material.dart';

class Tab_EstadosUnidos extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
/*       appBar: AppBar(
        title: Text('Estados Unidos',style: TextStyle(fontSize: 40, fontStyle: FontStyle.italic), textAlign: TextAlign.center,),
        backgroundColor: Colors.black,
      ), */
      body: Center(
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(color: Colors.green[200],borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Column(
                children: [
                  Image(
                    image: AssetImage('assets/images/tbf1_avenger.jpg'),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 5,bottom: 5),
                    child: Text('PRODUCIR MÁS QUE LOS DEMÁS, TENER MÁS ARMAMENTO Y SEMBRAR LA MUERTE DESDE EL CIELO',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),textAlign: TextAlign.center,)),
                  Container(
                    padding: EdgeInsets.only(top: 5,bottom: 5),
                    child: Text('Aunque se unieron a la guerra más tarde que las demás superpotencias, los Estados Unidos se pasaron años preparando sus cadenas de montaje y apoyando a sus aliados. Al superar en producción a sus enemigos del Eje, los estadounidenses pudieron lanzar operaciones de ataque de proporciones épicas en todos los teatros. Su fortaleza voladora recorría los cielos... y no era para entregar el correo.',
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