

class Uf {

  int? id;
  String? descricao_uf;
  String? sigla_uf;


  Uf({this.id, this.descricao_uf, this.sigla_uf});

  factory Uf.fromMap(Map<String, dynamic> json) => Uf(
    id: json['id']  ?? 0,
    descricao_uf: json['descricao_uf'] ?? '',
    sigla_uf: json['sigla_uf'] ?? ''
  );

  Map<String, dynamic> toMap(){
    return {
      'id': id,
      'descricao_uf': descricao_uf,
      'sigla_uf': sigla_uf
    };
  }
}