import 'dart:ffi';

import 'package:control_speding_2/apis/cidade_api.dart';
import 'package:control_speding_2/helper/db_helper.dart';
import 'package:control_speding_2/models/cidade.dart';
import 'package:control_speding_2/models/especificacao_gastos.dart';
import 'package:control_speding_2/models/uf.dart';
import 'package:control_speding_2/ui/login.dart';
import 'package:flutter/material.dart';

import 'apis/especificacao_gastos_api.dart';

void main() async{

  WidgetsFlutterBinding.ensureInitialized();

  //print(DBHelper.instance.addUf(Uf(descricao_uf: 'PErnambuco', sigla_uf: 'PE')));

  //print(DBHelper.instance.addCidade(Cidade(descricao_cidade: 'Anaindeuai', uf_id: 1)));

  //List _dados = await DBHelper.instance.getCidadesUfs();

  await EspecificacaoApi().getJson();

 /// print(DBHelper.instance.addEspecificacao(Especificacao(descricao_especificacao_gasto: "Trasnporte")));
  //List _dados = await DBHelper.instance.getCidades();
 // List _dados = await DBHelper.instance.getUfs();

  //print(_dados);

  /*for (Uf u in _dados) {
    print("ID Cidade " + u.id.toString());
    print("Desc Cidade " + u.descricao_uf.toString());
  }*/

    /*for (var c in _dados){

    print(c['id']);

  }*/

  runApp(
      const MaterialApp(
        home: Login(),
        debugShowCheckedModeBanner: false,
      ));}

