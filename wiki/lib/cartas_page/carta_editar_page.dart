import 'package:flutter/material.dart';
import 'package:prueba/provider/cartas_provider.dart';

class EditarCarta extends StatefulWidget {
  String id;
  EditarCarta(this.id, {Key? key}) : super(key: key);

  @override
  State<EditarCarta> createState() => _EditarCartaState();
}

class _EditarCartaState extends State<EditarCarta> {
  /* TextEditingController codigoCtrl = TextEditingController(); */
  TextEditingController nombreCtrl = TextEditingController();
  TextEditingController costo_invocacionCtrl = TextEditingController();
  TextEditingController costo_accionCtrl = TextEditingController();
  TextEditingController efectosCtrl = TextEditingController();
  /* TextEditingController borradoCtrl = TextEditingController(); */

  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Editar carta'),
        backgroundColor: Colors.green[300],
      ),
      body: FutureBuilder(
          future: CartasProvider().getCarta(widget.id),
          builder: (context, AsyncSnapshot snapshot) {
            if (!snapshot.hasData) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }

            var data = snapshot.data;
            nombreCtrl.text = data['nombre'];
            costo_invocacionCtrl.text = data['costo_invocacion'].toString();
            costo_accionCtrl.text = data['costo_accion'].toString();
            efectosCtrl.text = data['efectos'];

            return Form(
              key: formKey,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView(
                  children: [
                    TextFormField(
                      controller: nombreCtrl,
                      decoration: InputDecoration(labelText: 'Nombre'),
                    ),
                    TextFormField(
                      controller: costo_invocacionCtrl,
                      decoration: InputDecoration(labelText: 'costo invocacion'),
                    ),
                    TextFormField(
                      controller: costo_accionCtrl,
                      decoration: InputDecoration(labelText: 'costo accion'),
                    ),
                    TextFormField(
                      controller: efectosCtrl,
                      decoration: InputDecoration(labelText: 'efectos'),
                    ),
                    Container(
                      width: double.infinity,
                      child: ElevatedButton(
                        child: Text('Editar'),
                        onPressed: () {
                          CartasProvider().cartasEditar(
                            widget.id,
                            nombreCtrl.text.trim(),
                            int.tryParse(costo_accionCtrl.text.trim()) ?? 0,
                            int.tryParse(costo_accionCtrl.text.trim()) ?? 0,
                            efectosCtrl.text.trim(),
                          );
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
