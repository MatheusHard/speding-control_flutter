import 'dart:ffi';

import 'package:control_speding_2/helper/db_helper.dart';
import 'package:control_speding_2/models/cidade.dart';
import 'package:control_speding_2/models/uf.dart';
import 'package:control_speding_2/ui/login.dart';
import 'package:flutter/material.dart';

void main() async{

  WidgetsFlutterBinding.ensureInitialized();

  //print(DBHelper.instance.addUf(Uf(descricao_uf: 'PErnambuco', sigla_uf: 'PE')));

  //print(DBHelper.instance.addCidade(Cidade(descricao_cidade: 'Anaindeuai', uf_id: 1)));

  List _dados = await DBHelper.instance.getCidadesUfs();
  //List _dados = await DBHelper.instance.getCidades();
 // List _dados = await DBHelper.instance.getUfs();

  print(_dados);

  /*for (Uf u in _dados) {
    print("ID Cidade " + u.id.toString());
    print("Desc Cidade " + u.descricao_uf.toString());
  }*/

    for (var c in _dados){
      print(c.id);
   /* print("ID Cidade "+c.id);
    print("Desc Cidade "+c.descricao_cidade);
    print("ID UF "+c.uf_id.toString());
    print("Desc UF"+c.uf!.descricao_uf.toString());
*/
  }

  runApp(
      const MaterialApp(
        home: Login(),
        debugShowCheckedModeBanner: false,
      ));}

