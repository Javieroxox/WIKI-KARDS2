import 'package:flutter/material.dart';
import 'package:prueba/provider/cartas_provider.dart';

class AgregarCarta extends StatefulWidget {
  AgregarCarta({Key? key}) : super(key: key);

  @override
  State<AgregarCarta> createState() => _AgregarCartaState();
}

class _AgregarCartaState extends State<AgregarCarta> {
  final formKey = GlobalKey<FormState>();
  /* TextEditingController codigoCtrl = TextEditingController(); */
  TextEditingController nombreCtrl = TextEditingController();
  TextEditingController costo_invocacionCtrl = TextEditingController();
  TextEditingController costo_accionCtrl = TextEditingController();
  TextEditingController efectosCtrl = TextEditingController();
  /* TextEditingController borradoCtrl = TextEditingController(); */

  /* String errCodigo = ''; */
  String errNombre = '';
  String errEfectos = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agregar Carta', style: TextStyle(fontSize: 24)),
        backgroundColor: Colors.green[300],
      ),
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              /* TextFormField(
                controller: codigoCtrl,
                decoration: InputDecoration(labelText: 'Código'),
              ),
              Container(
                width: double.infinity,
                child: Text(
                  errCodigo,
                  style: TextStyle(color: Colors.red),
                ),
              ), */
              TextFormField(
                controller: nombreCtrl,
                decoration: InputDecoration(labelText: 'Nombre'),
              ),
              Container(
                width: double.infinity,
                child: Text(
                  errNombre,
                  style: TextStyle(color: Colors.red),
                ),
              ),
              TextFormField(
                controller: costo_invocacionCtrl,
                decoration: InputDecoration(labelText: 'Costo_invocacion'),
                keyboardType: TextInputType.number,
              ),
              TextFormField(
                controller: costo_accionCtrl,
                decoration: InputDecoration(labelText: 'Costo_accion'),
                keyboardType: TextInputType.number,
              ),
              TextFormField(
                controller: efectosCtrl,
                decoration: InputDecoration(labelText: 'Efectos'),
              ),
              Container(
                width: double.infinity,
                child: Text(
                  errEfectos,
                  style: TextStyle(color: Colors.red),
                ),
              ),
              Container(
                width: double.infinity,
                child: ElevatedButton(
                  child: Text('Agregar Carta'),
                  onPressed: () async {
                    int costo_invocacion = int.tryParse(costo_invocacionCtrl.text) ?? 0;
                    int costo_accion = int.tryParse(costo_accionCtrl.text) ?? 0;

                    var respuesta = await CartasProvider().cartaAgregar(
                      /* codigoCtrl.text.trim(), */
                      nombreCtrl.text.trim(),
                      costo_invocacion,
                      costo_accion,
                      efectosCtrl.text.trim(),
                    );

                    if (respuesta['message'] != null) {
                      /* if (respuesta['errors']['id'] != null) {
                        errCodigo = respuesta['errors']['id'][0];
                      } */
                      if (respuesta['errors']['nombre'] != null) {
                        errNombre = respuesta['errors']['nombre'][0];
                      }
                      if (respuesta['errors']['efectos'] != null) {
                        errEfectos = respuesta['errors']['efectos'][0];
                      }

                      setState(() {});
                      return;
                    }

                    Navigator.pop(context);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
