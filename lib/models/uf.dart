

class Uf {

  int? id;
  int? id_web;
  String? descricao_uf;
  String? sigla_uf;


  Uf({this.id, this.descricao_uf, this.sigla_uf, this.id_web});

  factory Uf.fromMap(Map<String, dynamic> json) => Uf(
    id: json['id']  ?? 0,
    id_web: json['id_web'] ?? 0,
    descricao_uf: json['descricao_uf'] ?? '',
    sigla_uf: json['sigla_uf'] ?? ''
  );

  Map<String, dynamic> toMap(){
    return {
      'id': id,
      'id_web': id_web,
      'descricao_uf': descricao_uf,
      'sigla_uf': sigla_uf
    };
  }
}