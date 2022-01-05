import 'dart:convert';

import 'package:control_speding_2/models/cidade.dart';
import 'package:control_speding_2/models/funcionario.dart';
import 'package:control_speding_2/models/viajem.dart';
import 'package:flutter/cupertino.dart';

import 'cidade.dart';
import 'uf.dart';

class Gasto {

  int? id;
  int? id_web;
  String? cpf_devedor;
  String? data_gasto;
  String?  fornecedor;
  String? imagem;
  String? latitude;
  String? longitude;
  int? subespecificacao_id;
  double? valor;
  int? viajem_id;
  Viajem? viajem;

  Gasto(
      {
        this.id, this.cpf_devedor, this.data_gasto, this.fornecedor,
        this.imagem, this.latitude, this.longitude, this.subespecificacao_id,
        this.valor, this.viajem_id, this.viajem, this.id_web
      });


  Map<String, dynamic> toMap() {

     return {

       'id': id,
       'id_web': id_web,
       'cpf_devedor': cpf_devedor,
       'data_gasto': data_gasto,
       'fornecedor': fornecedor,
       'imagem': imagem,
       'latitude': latitude,
       'longitude': longitude,
       'subespecificacao_id': subespecificacao_id,
       'valor': valor,
       'viajem_id': viajem_id

      // 'viajem': viajem,

     };
    }

    factory Gasto.fromMap(Map<String, dynamic> mapa) => Gasto (

      id : mapa['id'] ?? 0,
      id_web: mapa['id_web'] ?? 0,
      cpf_devedor : mapa['cpf_devedor'],
      data_gasto : mapa['data_gasto'],
      fornecedor: mapa['fornecedor'],
      imagem: mapa['imagem'] ?? 0,
      latitude: mapa['latitude'] ?? 0,
      longitude: mapa['longitude'] ?? 0,
      subespecificacao_id: mapa['subespecificacao_id'],
      valor: mapa['valor'],
      viajem_id: mapa['viajem_id'],
      viajem: Viajem.fromMap(mapa),

      );
  }