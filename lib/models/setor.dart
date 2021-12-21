

class Setor {

  int? id;
  String? descricao_setor;


  Setor({this.id, this.descricao_setor});

  factory Setor.fromMap(Map<String, dynamic> json) => Setor(
    id: json['id']  ?? 0,
    descricao_setor: json['descricao_setor'] ?? '',
  );

  Map<String, dynamic> toMap(){
    return {
      'id': id,
      'descricao_setor': descricao_setor
    };
  }
}