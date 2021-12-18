
import 'package:control_speding_2/helper/db_helper.dart';
import 'package:control_speding_2/models/especificacao_gastos.dart';
import 'package:control_speding_2/models/sub_especificacao_gastos.dart';
import 'package:control_speding_2/utils/metods/utils.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class EspecificacaoApi{

  String _URL_API_CIDADES = "especificacao_gastos";
  String _URL_API_CIDADES_POST = "api/cidade/add";

  //Future<int> getJson(BuildContext context) async{
  Future<int> getJson() async{
    var url = Uri.parse(Utils.URL_WEB_SERVICE + _URL_API_CIDADES);
    http.Response response = await http.get(url);

    List _dados = json.decode(response.body);
    //print(_dados);


    if(response.statusCode == 200) {

      ///Zerar Tabelas:
      await DBHelper.instance.zerarTabelaEspecificacao();
      await DBHelper.instance.zerarTabelaSubEspecificacao();


      ///Inserir no DB interno dados da API:
      for (int i = 0; i < _dados.length; i++) {

       await DBHelper.instance.addEspecificacao(Especificacao(descricao_especificacao_gasto: _dados[i]["descricao_especificacao_gasto"]));
       var sub = _dados[i]['sub_especificacoes_gastos'];

       for (int j = 0; j < sub.length; j++) {
         await DBHelper.instance.addSubEspecificacao(
                                                    SubEspecificacao(id: sub[j]["id"],
                                                                    descricao_sub_especificacao_gasto: sub[j]["descricao_sub_especificacao_gasto"],
                                                                    especificacao_gasto_id: _dados[i]["id"]));

       // print(sub[j]);
      }
      }




      //List d = await DBHelper.instance.getCidadesUfs();
      //print(d);

      //return json.decode(response.body);
      return response.statusCode;

    }else{
      return response.statusCode;

    }
  }
/************ENVIAR***************/

/*insertJson(Map cidade) async{
    String url = Utils.URL_WEB_SERVICE + _URL_API_CIDADES_POST;

    http.Response response = await http.post(
      url,
      headers: {
       "Content-type": "application/x-www-form-urlencoded; charset=UTF-8"
      },
      body: cidade
    );
    print("Status: "+response.statusCode.toString());
    print("Body: "+response.body.toString());

  }*/
}

