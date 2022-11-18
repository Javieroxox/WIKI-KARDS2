import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:prueba/cartas_page/carta_agregar_page.dart';
import 'package:prueba/cartas_page/carta_editar_page.dart';
import 'package:prueba/provider/cartas_provider.dart';
import 'package:intl/intl.dart';

class Drawer_Cartas extends StatefulWidget {
  
  Drawer_Cartas({Key? key}) : super(key: key);
  
  @override
  State<Drawer_Cartas> createState() => _Drawer_CartasState();
}

class _Drawer_CartasState extends State<Drawer_Cartas> {
  String valor = 'red';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cartas'),
        backgroundColor: Colors.green[300],
      ),
      body: Padding(
        padding: EdgeInsets.all(5),
        child: Column(
          children: [
            Expanded(
              child: FutureBuilder(
                future: CartasProvider().getCartas(),
                builder: (context, AsyncSnapshot snap) {
                  if (!snap.hasData) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  return ListView.separated(
                    separatorBuilder: (_, __) => Divider(),
                    itemCount: snap.data.length,
                    itemBuilder: (context, index) {
                      var car = snap.data[index];
                      valor == car['costo_invocacion'];
                      return Slidable(
                        child: ListTile(
                          leading: Text('${car['costo_invocacion']}-${car['costo_accion']}',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
                          title: Text(car['nombre'],style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold ,fontStyle: FontStyle.italic)),
                          subtitle: Text(car['efectos'],style: TextStyle(fontSize: 15,fontStyle: FontStyle.italic)),
                          trailing: Icon(MdiIcons.cardsPlayingClubOutline),
                        ),
                        /* startActionPane: ActionPane(
                          motion: ScrollMotion(),
                          children: [
                            SlidableAction(
                              onPressed: (context) {
                                MaterialPageRoute route = MaterialPageRoute(
                                  builder: (context) => EditarCarta(car['id'].toString()),
                                );
                                Navigator.push(context, route).then((value) {
                                  setState(() {});
                                });
                              },
                              backgroundColor: Colors.purple,
                              icon: MdiIcons.pen,
                              label: 'Editar',
                            ),
                          ],
                        ), */
                        endActionPane: ActionPane(
                          motion: ScrollMotion(),
                          children: [
                            SlidableAction(
                              onPressed: (context) {
                                String cod_cartas = car['id'].toString();
                                String nombre = car['nombre'];
                                confirmDialog(context, nombre).then((confirma) {
                                  if (confirma) {
                                    CartasProvider().cartasBorrar(cod_cartas).then((borradoOk) {
                                      if (borradoOk) {
                                        snap.data.removeAt(index);
                                        setState(() {});
                                        showSnackbar('Carta $nombre borrado');
                                      } else {
                                        showSnackbar('No se pudo borrar el carta');
                                      }
                                    });
                                  }
                                });
                              },
                              backgroundColor: Colors.red,
                              icon: MdiIcons.trashCan,
                              label: 'Borrar',
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
              ),
            ),
            Container(
              width: double.infinity,
              child: ElevatedButton(
                child: Text('Agregar Carta'),
                onPressed: () {
                  MaterialPageRoute route = MaterialPageRoute(builder: (context) {
                    return AgregarCarta();
                  });
                  Navigator.push(context, route).then((value) {
                    print('ACTUALIZAR PAGINA');
                    setState(() {});
                  });
                },
              ),
            ),            
          ],
        ),
      ),
    );
  }

  

  void showSnackbar(String mensaje) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: Duration(seconds: 2),
        content: Text(mensaje),
      ),
    );
  }

  Future<dynamic> confirmDialog(BuildContext context, String carta) {
    return showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Confirmar borrado'),
          content: Text('¿Borrar la carta $carta?'),
          actions: [
            TextButton(
              child: Text('CANCELAR'),
              onPressed: () => Navigator.pop(context, false),
            ),
            ElevatedButton(
              child: Text('ACEPTAR'),
              onPressed: () => Navigator.pop(context, true),
            ),
          ],
        );
      },
    );
  }
}
