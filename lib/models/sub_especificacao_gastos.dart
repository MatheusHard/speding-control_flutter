

class SubEspecificacao {

  int? id;
  String? descricao_sub_especificacao_gasto;
  int? especificacao_gasto_id;


  SubEspecificacao({this.id, this.descricao_sub_especificacao_gasto, this.especificacao_gasto_id});

  factory SubEspecificacao.fromMap(Map<String, dynamic> json) => SubEspecificacao(
      id: json['id']  ?? 0,
      descricao_sub_especificacao_gasto: json['descricao_sub_especificacao_gasto'],
      especificacao_gasto_id: json['especificacao_gasto_id'] ?? 0
  );

  Map<String, dynamic> toMap(){
    return {
      'id': id,
      'descricao_sub_especificacao_gasto': descricao_sub_especificacao_gasto,
      'especificacao_gasto_id': especificacao_gasto_id
    };
  }
}