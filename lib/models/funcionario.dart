import 'dart:convert';

import 'package:control_speding_2/models/setor.dart';

import 'uf.dart';

class Funcionario {

  int? id;
  String? cpf;
  String? email;
  String? nome;
  String? telefone;
  String? password;
  int? setor_id;
  Setor? setor;

  Funcionario(
      {
        this.id, this.cpf, this.email, this.nome,
        this.telefone, this.password, this.setor_id,
        this.setor
      });


  Map<String, dynamic> toMap() {

     return {

       'id': id,
       'cpf': cpf,
       'email': email,
       'nome': nome,
       'telefone': telefone,
       'password': password,
       'setor_id': setor_id

     };
    }

    factory Funcionario.fromMap(Map<String, dynamic> mapa) => Funcionario (

        id : mapa['id'] ?? 0,
        cpf : mapa['cpf'] ?? '',
        email : mapa['email'] ?? '',
        nome : mapa['nome'] ?? '',
        telefone: mapa['telefone'] ?? '',
        password: mapa['password'] ?? '',
        setor_id: mapa['setor_id'] ?? 0,
        setor : Setor.fromMap(mapa)

    );
  }