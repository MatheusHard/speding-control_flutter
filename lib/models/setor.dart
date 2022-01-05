

class Setor {

  int? id;
  int? id_web;
  String? descricao_setor;


  Setor({this.id, this.descricao_setor, this.id_web});

  factory Setor.fromMap(Map<String, dynamic> json) => Setor(
    id: json['id']  ?? 0,
    id_web: json['id_web'] ?? 0,
    descricao_setor: json['descricao_setor'] ?? '',
  );

  Map<String, dynamic> toMap(){
    return {
      'id': id,
      'id_web': id_web,
      'descricao_setor': descricao_setor
    };
  }
}