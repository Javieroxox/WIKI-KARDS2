import 'package:flutter/material.dart';
/* import 'package:material_design_icons_flutter/material_design_icons_flutter.dart'; */
import 'package:prueba/tab_alemania.dart';
import 'package:prueba/tab_imperio_britanico.dart';
import 'package:prueba/tab_japon.dart';
import 'package:prueba/tab_union_sovietica.dart';

import 'tab_estadosunidos.dart';

class Drawer_Tab_Nacion extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Naciones'),
            backgroundColor: Colors.green[300],
            bottom: TabBar(
              labelColor: Colors.black,
              unselectedLabelColor: Colors.white,
              isScrollable: true,
              tabs: [
              Tab(
                text: 'Alemania',
              ),
              Tab(
                text: 'Estados Unidos',
              ),
              Tab(
                text: 'Japón',
              ),
              Tab(
                text: 'Unión Soviética',
              ),
              Tab(
                text: 'Imperio británico',
              ),
            ]),
          ),
          body: TabBarView(children: [
            Tab_Alemania(),
            Tab_EstadosUnidos(),
            Tab_Japon(),
            Tab_Union_Sovietica(),
            Tab_Imperio_Britanico(),
          ]),
        ),
      ),
    );
  }
}