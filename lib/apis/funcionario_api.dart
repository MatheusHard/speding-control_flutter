
import 'package:control_speding_2/helper/db_helper.dart';
import 'package:control_speding_2/models/especificacao_gastos.dart';
import 'package:control_speding_2/models/funcionario.dart';
import 'package:control_speding_2/models/sub_especificacao_gastos.dart';
import 'package:control_speding_2/utils/metods/utils.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class FuncionarioApi{

  String _URL_API_FUNCIONARIOS = "funcionarios/";

  //Future<int> getJson(BuildContext context) async{ http://192.168.0.2:8080/api/
  Future<int> getJson(int id) async{
    //var url = Uri.parse('''http://192.168.0.2:8080/api/funcionarios/1''');
    var url = Uri.parse('''${Utils.URL_WEB_SERVICE}$_URL_API_FUNCIONARIOS${id.toString()}''');
    http.Response response = await http.get(url);

    //List _dados = json.decode(response.body);
    Map<String, dynamic> _dado = Map<String, dynamic>.from(json.decode(response.body));




    if(response.statusCode == 200) {

      ///Zerar Tabelas:
      await DBHelper.instance.zerarTabelaFuncionario();


      ///Inserir no DB interno dados da API:
      await DBHelper.instance.addFuncionario(
                                            Funcionario(
                                                        id :_dado['id'], setor_id: _dado['setor_id'], telefone: _dado['telefone'],
                                                        password: _dado['password'], cpf: _dado['cpf'], email: _dado['telefone'],
                                                        nome: _dado['nome']
                                            ));


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

