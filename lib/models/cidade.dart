import 'dart:convert';

import 'uf.dart';

class Cidade {

  int? _id;
  String? _descricao_cidade;
  int? _uf_id;
  Uf? _uf;



  Cidade(this._descricao_cidade, this._uf_id, this._uf);

  Cidade.fromJson(Map<String, dynamic> json):
      this._id = int.tryParse(json['id']) ?? 0,
      this._descricao_cidade = json['descricao_cidade'],
      this._uf_id = json['uf_id'];

  Map<String, dynamic> toJson() =>
      {
        'descricao_cidade': this._descricao_cidade,
        'uf_id': this._uf_id.toString(),
      };

  Cidade.map(dynamic obj){

    this._descricao_cidade = obj['descricao_cidade'];
    this._uf_id = obj['uf_id'];
    this._id = obj['id'];
  }

  String? get descricao_cidade => _descricao_cidade;
  int? get uf_id => _uf_id;
  int? get id => _id;
  Uf? get uf => _uf;

Map<String, dynamic> toMap() {

    var mapa = new Map<String, dynamic>();
    mapa["descricao_cidade"] = _descricao_cidade;
    mapa["uf_id"] = _uf_id;

    if(id != null){mapa["id"] = _id;}

    return mapa;
  }

  Cidade.fromMap(Map<String, dynamic> mapa){

    this._descricao_cidade = mapa['descricao_cidade'];
    this._uf_id = mapa['uf_id'];
    this._id = mapa['id'];
    this._uf = Uf.fromMap(mapa);
  }
}