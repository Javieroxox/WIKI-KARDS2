import 'package:flutter/material.dart';

class Drawer_Tutorial extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tutorial', style: TextStyle(fontSize: 24),),
        backgroundColor: Colors.green[300],
      ),
      body: Center(
        child: Text('Bienvenido a Himalaya, helado?'),
      ),
    );
  }
}