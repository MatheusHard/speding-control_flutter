import 'dart:ffi';

import 'package:control_speding_2/apis/cidade_api.dart';
import 'package:control_speding_2/helper/db_helper.dart';
import 'package:control_speding_2/models/cidade.dart';
import 'package:control_speding_2/models/especificacao_gastos.dart';
import 'package:control_speding_2/models/setor.dart';
import 'package:control_speding_2/models/sub_especificacao_gastos.dart';
import 'package:control_speding_2/models/uf.dart';
import 'package:control_speding_2/ui/login.dart';
import 'package:control_speding_2/utils/metods/utils.dart';
import 'package:flutter/material.dart';


import 'apis/especificacao_gastos_api.dart';

void main() async{

  WidgetsFlutterBinding.ensureInitialized();






  //print(DBHelper.instance.addUf(Uf(descricao_uf: 'PErnambuco', sigla_uf: 'PE')));

  //print(DBHelper.instance.addCidade(Cidade(descricao_cidade: 'Anaindeuai', uf_id: 1)));

  //List _dados = await DBHelper.instance.getCidadesUfs();

  //await EspecificacaoApi().getJson();

  //print(DBHelper.instance.addsetor(Setor(descricao_setor: "Infra")));

  //List _dados = await DBHelper.instance.getSubEspecificacoes();
 // List _dados = await DBHelper.instance.getUfs();
   //List _dados = await DBHelper.instance.getSetores();


  // print(_dados);

  /*for (SubEspecificacao e in _dados) {
    print("----------------------------------------");
    print("ID Especificacao: " + e.id.toString());
    print("Desc Especificacao: " + e.descricao_sub_especificacao_gasto.toString());
    print("Desc Especificacao ID: " + e.especificacao_gasto_id.toString());

  }*/


  /*for (Setor e in _dados) {
    print("----------------------------------------");
    print("ID Especificacao: " + e.id.toString());
    print("Desc Especificacao: " + e.descricao_setor.toString());

  }*/

    /*for (var c in _dados){

    print(c['id']);

  }*/

  runApp(
      const MaterialApp(
        home: Login(),
        debugShowCheckedModeBanner: false,
      ));}

