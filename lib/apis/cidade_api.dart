
import 'package:control_speding_2/helper/db_helper.dart';
import 'package:control_speding_2/utils/metods/utils.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class CidadeApi{

  String _URL_API_CIDADES = "cidades";
  String _URL_API_CIDADES_POST = "api/cidade/add";

  //Future<int> getJson(BuildContext context) async{
  Future<int> getJson() async{
        var url = Uri.parse(Utils.URL_WEB_SERVICE + _URL_API_CIDADES);
        http.Response response = await http.get(url);

        List _dados = json.decode(response.body);
      print(response);
        if(response.statusCode == 200) {
//      await db.deletarTabelaCidade();

    //Pegar dados da API:
    List _dados = json.decode(response.body);

  for (int i = 0; i < _dados.length; i++) {
    //Inserir no DB interno dados da API:
   // await db.inserirCidade(new Cidade(_dados[i]["descricao_cidade"], _dados[i]["uf_id"] , null));
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

