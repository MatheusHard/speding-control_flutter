

import 'package:control_speding_2/models/sub_especificacao_gastos.dart';

class Especificacao {

  int? id;
  String? descricao_sub_especificacao_gasto;
  List<SubEspecificacao>? sub_especificacoes_gastos;


  Especificacao({this.id, this.descricao_sub_especificacao_gasto, this.sub_especificacoes_gastos});

  factory Especificacao.fromMap(Map<String, dynamic> json) => Especificacao(
      id: json['id']  ?? 0,
      descricao_sub_especificacao_gasto: json['descricao_sub_especificacao_gasto'] ?? '',
      sub_especificacoes_gastos: json['sub_especificacoes_gastos']
  );

  Map<String, dynamic> toMap(){
    return {
      'id': id,
      'descricao_sub_especificacao_gasto': descricao_sub_especificacao_gasto,
      'sub_especificacoes_gastos': sub_especificacoes_gastos
    };
  }
}