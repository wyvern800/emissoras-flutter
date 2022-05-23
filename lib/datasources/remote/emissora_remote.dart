import 'package:aula_02_pos/constantes.dart';
import 'package:aula_02_pos/infra/http/http.dart';
import 'package:aula_02_pos/models/models.dart';

class EmissoraRemote {
  final _link = '${linkApiEmissoras}/GetEmissora';
  final _clienteHttp = ClienteHttp();

  Future<List<Emissora>> get() async {
    final lista = await _clienteHttp.getJson(_link);
    return lista.map((e) => Emissora.fromMap(e)).toList();
  }
}