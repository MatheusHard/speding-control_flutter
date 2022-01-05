import 'dart:convert';

import 'uf.dart';

class Cidade {

  int? id;
  String? descricao_cidade;
  int? uf_id;
  int? id_web;
  Uf? uf;



  Cidade({this.id, this.descricao_cidade, this.uf_id, this.uf, this.id_web});


  Map<String, dynamic> toMap() {

     return {
       'id': id,
       'descricao_cidade': descricao_cidade,
       'uf_id': uf_id,
       'id_web': id_web
      // 'uf': uf
     };
    }

    factory Cidade.fromMap(Map<String, dynamic> mapa) => Cidade (

      id : mapa['id'] ?? 0,
      descricao_cidade : mapa['descricao_cidade'],
      uf_id : mapa['uf_id'] ?? 0,
      id_web: mapa['id_web'] ?? 0,
      uf : Uf.fromMap(mapa)
    );
  }