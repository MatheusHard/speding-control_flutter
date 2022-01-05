

import 'package:control_speding_2/models/sub_especificacao_gastos.dart';

class Especificacao {

  int? id;
  String? descricao_especificacao_gasto;
  int? id_web;
  List<SubEspecificacao>? sub_especificacoes_gastos;


  Especificacao({this.id, this.descricao_especificacao_gasto, this.id_web});

  factory Especificacao.fromMap(Map<String, dynamic> json) => Especificacao(
      id: json['id']  ?? 0,
      id_web: json['id_web'] ?? 0,
      descricao_especificacao_gasto: json['descricao_especificacao_gasto'] ?? '',
      //sub_especificacoes_gastos: json['sub_especificacoes_gastos']
  );

  Map<String, dynamic> toMap(){
    return {
      'id': id,
      'id_web': id_web,
      'descricao_especificacao_gasto': descricao_especificacao_gasto
     // 'sub_especificacoes_gastos': sub_especificacoes_gastos
    };
  }
}