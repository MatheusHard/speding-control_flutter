import 'dart:convert';

import 'package:control_speding_2/models/cidade.dart';
import 'package:control_speding_2/models/funcionario.dart';

import 'cidade.dart';
import 'uf.dart';

class Viajem {
/* static const String data_inicial = "data_inicial";
  static const String data_final = "data_final";
  static const String gasto_total = "gasto_total";
  static const String saldo = "saldo";
  static const String cidade_id = "cidade_id";
  static const String funcionario_id = "funcionario_id";
*/

  int? id;
  DateTime? data_inicial;
  DateTime? data_final;
  double?  gasto_total;
  double? saldo;
  int? cidade_id;
  int? funcionario_id;
  Cidade? cidade;
  Funcionario? funcionario;




  Viajem(
      {
        this.id, this.data_inicial, this.data_final, this.gasto_total,
        this.saldo, this.cidade_id, this.funcionario_id, this.cidade,
        this.funcionario
      });


  Map<String, dynamic> toMap() {

     return {

       'id': id,
       'data_inicial': data_inicial,
       'data_final': data_final,
       'gasto_total': gasto_total,
       'saldo': saldo,
       'cidade_id': cidade_id,
       'funcionario_id': funcionario_id,
       'cidade': cidade,
       'funcionario': funcionario

     };
    }

    factory Viajem.fromMap(Map<String, dynamic> mapa) => Viajem (

      id : mapa['id'] ?? 0,
      data_inicial : mapa['data_inicial'],
      data_final : mapa['data_final'],
      gasto_total: mapa['gasto_total'],
      saldo: mapa['saldo'] ?? 0,
      cidade_id: mapa['cidade_id'] ?? 0,
      funcionario_id: mapa['funcionario_id'] ?? 0,
      cidade: Cidade.fromMap(mapa),
      funcionario: Funcionario.fromMap(mapa),

      );
  }