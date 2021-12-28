import 'dart:ffi';

import 'package:control_speding_2/apis/cidade_api.dart';
import 'package:control_speding_2/helper/db_helper.dart';
import 'package:control_speding_2/models/cidade.dart';
import 'package:control_speding_2/models/especificacao_gastos.dart';
import 'package:control_speding_2/models/funcionario.dart';
import 'package:control_speding_2/models/setor.dart';
import 'package:control_speding_2/models/sub_especificacao_gastos.dart';
import 'package:control_speding_2/models/uf.dart';
import 'package:control_speding_2/models/viajem.dart';
import 'package:control_speding_2/ui/login.dart';
import 'package:control_speding_2/utils/metods/utils.dart';
import 'package:flutter/material.dart';


import 'apis/especificacao_gastos_api.dart';

void main() async{

  WidgetsFlutterBinding.ensureInitialized();


  //print(DBHelper.instance.addUf(Uf(descricao_uf: 'PErnambuco', sigla_uf: 'PE')));

  print(DBHelper.instance.addFuncionario(Funcionario(
                                        cpf: '05694641450', email: 'matheus@gmail',
                                        nome: 'Matheus', password: 'FREDN', telefone: '88709050',
                                        setor_id: 2)));
  ///Get Funcionario:
  //var _dado = await DBHelper.instance.getFuncionario("05694641450");
  ///print(_dado!.cpf);


  //List _dados = await DBHelper.instance.getCidadesUfs();

  //await EspecificacaoApi().getJson();

  //print(DBHelper.instance.addsetor(Setor(descricao_setor: "Developer")));

  //List _dados = await DBHelper.instance.getSubEspecificacoes();
 // List _dados = await DBHelper.instance.getUfs();
   //List _dados = await DBHelper.instance.getSetores();


  ///Get JOin de F e Setor
  //var _dados = await DBHelper.instance.getFuncionarioSetor("05694641450");

  print("----------------------------------------");
  //print(_dados);
  /*for (var f in _dados) {
    print("----------------------------------------");
    print(f['id']);
    print("Desc Especificacao: " + f['nome']);
    print("Desc Especificacao: " + f['cpf']);
    print("Desc Especificacao ID: " + f['descricao_setor']);

  }*/
///VIAJEM
  var _dado = await DBHelper.instance.addViajem(
      Viajem(
          data_inicial: Utils.getDataHora().toString(), data_final: Utils.getDataHora().toString(),
          cidade_id: 20, funcionario_id: 2, gasto_total: 3000, saldo: 2000
          ));
//print(_dado);

List _dados = await DBHelper.instance.getViagensFuncionario(2);

//print(_dados);

  for (var e in _dados) {
    print("----------------------------------------");
    print("ID : " + e['id'].toString());

    print("Desc Especificacao: " + e['data_inicial']);

  }

    /*for (var c in _dados){

    print(c['id']);

  }*/

  runApp(
      const MaterialApp(
        home: Login(),
        debugShowCheckedModeBanner: false,
      ));}

