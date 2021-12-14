import 'dart:convert';

import 'uf.dart';

class Cidade {

  int? id;
  String? descricao_cidade;
  int? uf_id;
  Uf? uf;



  Cidade({this.id, this.descricao_cidade, this.uf_id, this.uf});


  Map<String, dynamic> toMap() {

     return {
       'id': id,
       'descricao_cidade': descricao_cidade,
       'uf_id': uf_id
      // 'uf': uf
     };
    }

    factory Cidade.fromMap(Map<String, dynamic> mapa) => Cidade (

      id : mapa['id'] ?? 0,
      descricao_cidade : mapa['descricao_cidade'],
      uf_id : mapa['uf_id'] ?? 0,
      uf : Uf.fromMap(mapa)
    );
  }