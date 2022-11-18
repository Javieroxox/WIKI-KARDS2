import 'dart:collection';
import 'dart:convert';
import 'package:http/http.dart' as http;

class CartasProvider {
  final String apiURL = 'http://10.0.2.2:8000/api';

  Future<List<dynamic>> getCartas() async {
    var uri = Uri.parse('$apiURL/cartas');
    var respuesta = await http.get(uri);

    if (respuesta.statusCode == 200) {
      return json.decode(respuesta.body);
    } else {
      return [];
    }
  }

  Future<LinkedHashMap<String, dynamic>> getCarta(String cod_cartas) async {
    var uri = Uri.parse('$apiURL/cartas/$cod_cartas');
    var respuesta = await http.get(uri);

    if (respuesta.statusCode == 200) {
      return json.decode(respuesta.body);
    } else {
      return new LinkedHashMap();
    }
  }

  Future<LinkedHashMap<String, dynamic>> cartaAgregar(
      String nombre, int costo_invocacion, int costo_accion, String efectos) async {
    var uri = Uri.parse('$apiURL/cartas');
    var respuesta = await http.post(uri,
        headers: <String, String>{'Content-Type': 'application/json; charset=UTF-8', 'Accept': 'application/json'},
        body: jsonEncode(
            <String, dynamic>{'nombre': nombre, 'costo_invocacion': costo_invocacion, 'costo_accion': costo_accion, 'efectos': efectos}));

    return json.decode(respuesta.body);
  }

  Future<LinkedHashMap<String, dynamic>> cartasEditar(
      String id, String nombre, int costo_invocacion, int costo_accion, String efectos) async {
    var uri = Uri.parse('$apiURL/cartas/$id');
    var respuesta = await http.put(uri,
        headers: <String, String>{'Content-Type': 'application/json; charset=UTF-8', 'Accept': 'application/json'},
        body: jsonEncode(
            <String, dynamic>{'nombre': nombre, 'costo_invocacion': costo_invocacion, 'costo_accion': costo_accion, 'efectos': efectos}));
    print('$nombre');
    return json.decode(respuesta.body);
  }

  Future<bool> cartasBorrar(String cod_cartas) async {
    var uri = Uri.parse('$apiURL/cartas/$cod_cartas');
    var respuesta = await http.delete(uri);
    return respuesta.statusCode == 200;
  }
}
