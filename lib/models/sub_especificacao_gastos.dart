

class SubEspecificacao {

  int? id;
  int? id_web;
  String? descricao_sub_especificacao_gasto;
  int? especificacao_gasto_id;


  SubEspecificacao({
                    this.id, this.id_web,
                    this.descricao_sub_especificacao_gasto, this.especificacao_gasto_id
                   });

  factory SubEspecificacao.fromMap(Map<String, dynamic> json) => SubEspecificacao(
      id: json['id']  ?? 0,
      id_web: json['id_web'] ?? 0,
      descricao_sub_especificacao_gasto: json['descricao_sub_especificacao_gasto'],
      especificacao_gasto_id: json['especificacao_gasto_id'] ?? 0
  );

  Map<String, dynamic> toMap(){
    return {
      'id': id,
      'id_web': id_web,
      'descricao_sub_especificacao_gasto': descricao_sub_especificacao_gasto,
      'especificacao_gasto_id': especificacao_gasto_id
    };
  }
}