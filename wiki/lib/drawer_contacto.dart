import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Drawer_Contacto extends StatefulWidget {
  Drawer_Contacto({Key? key}) : super(key: key);

  @override
  State<Drawer_Contacto> createState() => _Drawer_ContactoState();
}

class _Drawer_ContactoState extends State<Drawer_Contacto> {

  final emailRegex=r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contacto', style: TextStyle(fontSize: 24),),
        backgroundColor: Colors.green[300],
      ),
      body: Column(
        children: [
          Expanded(
            child:
              Padding(padding: EdgeInsets.all(5.0),
                child:
                ListView(
                  children: [
                    campoEmail(),
                    campoEdad(),
                    campoNombre(),
                    Container(
                      child: DateTimePicker(
                        locale: Locale('es','ES'),
                        initialValue: DateTime.now().toString(),
                        dateMask: 'd MMM, yyyy',
                        firstDate: DateTime.now(),
                        lastDate: DateTime(2080),
                        style: TextStyle(fontSize: 20,color: Colors.blue[700]),
                        dateLabelText: 'Fecha',
                        onChanged: (val) => print(val),
                        validator: (val) {
                          print(val);
                          return null;
                        },
                        onSaved: (val) => print(val),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        width: double.infinity,
                        child: ElevatedButton(
                          child: Text('Agregar Producto', style: TextStyle(fontSize: 18),),
                          onPressed: () {
                            setState(() {
                              print('ACTUALIZAR PAGINA');
                            });
                            return;
                          }
                          
                        ),
                      ),
                    ),
                  ],
                ),
              ),
          ),
        ],
      ),
    );
  }

  TextFormField campoEmail() {
  return TextFormField(
      initialValue: 'Usuario@gmail.com', style: TextStyle(fontSize: 20),
      decoration: InputDecoration(
        hintText: 'Email',
        labelText: 'Email',
      ),
      keyboardType: TextInputType.emailAddress,
      validator: (Email){
        if(Email!.isEmpty){
          return 'indique Email';
        }
        if(!RegExp(emailRegex).hasMatch(Email)){
          return 'Formato de email no valido';
        }          
        return null;
      }, 
    );
  }

  TextFormField campoNombre() {
  return TextFormField(
      initialValue: 'Ramires', style: TextStyle(fontSize: 20),
      decoration: InputDecoration(
        hintText: 'Nombre',
        labelText: 'Nombre',
      ),
      validator: (Nombres){
        if(Nombres!.isEmpty){
          return 'indique Nombre';
        }
        return null;
      },
    );
  }

  TextFormField campoEdad() {
  return TextFormField(
      keyboardType: TextInputType.number,
      initialValue: '12',
      decoration: InputDecoration(
        hintText: '18',
        labelText: 'Edad',
      ),
      maxLength: 2,
      inputFormatters: <TextInputFormatter>[
        FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
      ],
      validator: (Nombres){
        if(Nombres!.isEmpty){
          return 'indique Edad';
        }
        return null;
      },
    );
  }
}