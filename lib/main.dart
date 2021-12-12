import 'package:control_speding_2/helper/db_helper.dart';
import 'package:control_speding_2/models/uf.dart';
import 'package:control_speding_2/ui/login.dart';
import 'package:flutter/material.dart';

void main() async{

  WidgetsFlutterBinding.ensureInitialized();


  print(DBHelper.instance.addUf(Uf(descricao_uf: 'PErnambuco', sigla_uf: 'PE')));

  List _dados = await DBHelper.instance.getUfs();

  print(_dados);
  for (Uf uf in _dados){
    print("UFS "+uf.id.toString());
  }

  runApp(
      const MaterialApp(
        home: Login(),
        debugShowCheckedModeBanner: false,
      ));}

