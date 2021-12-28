
import 'package:control_speding_2/data_model/cidade_data_model.dart';
import 'package:control_speding_2/data_model/especificacao_gastos_data_model.dart';
import 'package:control_speding_2/data_model/funcionario_data_model.dart';
import 'package:control_speding_2/data_model/setor_data_model.dart';
import 'package:control_speding_2/data_model/sub_especificacoes_gastos_data_model.dart';
import 'package:control_speding_2/data_model/uf_data_model.dart';
import 'package:control_speding_2/data_model/viajem_data_model.dart';
import 'package:control_speding_2/models/cidade.dart';
import 'package:control_speding_2/models/especificacao_gastos.dart';
import 'package:control_speding_2/models/funcionario.dart';
import 'package:control_speding_2/models/setor.dart';
import 'package:control_speding_2/models/sub_especificacao_gastos.dart';
import 'package:control_speding_2/models/uf.dart';
import 'package:control_speding_2/models/viajem.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:io';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';





class DBHelper{


  DBHelper._privateConstructor();
  static final DBHelper instance = DBHelper._privateConstructor();
  static Database? _database;

  Future<Database> get database async => _database ??= await _initDB();


  _initDB () async {
    Directory documentoDiretorio = await getApplicationDocumentsDirectory();
    String caminho = join(documentoDiretorio.path, "db_gastos.db");// home://directory/files/db_gastos.db

    return  await  openDatabase(
        caminho,
        version: 1,
        onCreate: _onCreate);

  }

  void _onCreate(Database db, int version) async{

    await db.execute(UfDataModel.criarTabela());
    await db.execute(CidadeDataModel.criarTabela());
    await db.execute(EspecificacaoDataModel.criarTabela());
    await db.execute(SubEspecificacaoDataModel.criarTabela());
    await db.execute(SetorDataModel.criarTabela());
    await db.execute(FuncionarioDataModel.criarTabela());
    await db.execute(ViajemDataModel.criarTabela());


  }

  /******CRUD UF******/

  Future<List<Uf>>getUfs() async {
    Database db = await instance.database;
    var ufs = await db.query(UfDataModel.getTabela(), orderBy: UfDataModel.descricao_uf);
    List<Uf> ufList = ufs.isNotEmpty
          ? ufs.map((u) => Uf.fromMap(u)).toList()
          : [];
    return ufList;
  }

  Future<int> addUf(Uf uf) async {
    Database db = await instance.database;
    return await db.insert(UfDataModel.getTabela(), uf.toMap());
  }

/******CRUD CIDADE******/

  Future<List<Cidade>>getCidades() async {
    Database db = await instance.database;
    var cidades = await db.query(CidadeDataModel.getTabela(), orderBy: CidadeDataModel.descricao_cidade);
    List<Cidade> cidadeList = cidades.isNotEmpty
        ? cidades.map((c) => Cidade.fromMap(c)).toList()
        : [];
    return cidadeList;
  }

  Future<int> addCidade(Cidade c) async {
    Database db = await instance.database;
    return await db.insert(CidadeDataModel.getTabela(), c.toMap());
  }

  Future<List> getCidadesUfs() async {
    Database db = await instance.database;
    var res = await db.rawQuery('''SELECT c.${CidadeDataModel.id}, c.${CidadeDataModel.descricao_cidade},
        c.${CidadeDataModel.uf_id}, u.${UfDataModel.descricao_uf} FROM ${CidadeDataModel.getTabela()} c
         INNER JOIN ${UfDataModel.getTabela()} u WHERE u.${UfDataModel.id} = c.${CidadeDataModel.uf_id}
         ORDER BY c.${CidadeDataModel.descricao_cidade}''');

    return res.toList();
  }

  /******CRUD ESPECIFICACOES******/

  Future<List<Especificacao>>getEspecificacoes() async {
    Database db = await instance.database;
    var especificacoes = await db.query(EspecificacaoDataModel.getTabela(), orderBy: EspecificacaoDataModel.descricao_especificacao_gasto);
    List<Especificacao> especificacaoList = especificacoes.isNotEmpty
        ? especificacoes.map((e) => Especificacao.fromMap(e)).toList()
        : [];
    return especificacaoList;
  }

  Future<int> addEspecificacao(Especificacao e) async {
    Database db = await instance.database;
    return await db.insert(EspecificacaoDataModel.getTabela(), e.toMap());
  }


  Future<int> zerarTabelaEspecificacao() async {
    Database db = await instance.database;
    return await db.rawDelete(EspecificacaoDataModel.zerarTabela());

  }

  /******CRUD SUB_ESPECIFICACOES******/

  Future<List<SubEspecificacao>>getSubEspecificacoes() async {
    Database db = await instance.database;
    var sub_especificacoes = await db.query(SubEspecificacaoDataModel.getTabela(), orderBy: SubEspecificacaoDataModel.descricao_sub_especificacao_gasto);
    List<SubEspecificacao> sub_especificacaoList = sub_especificacoes.isNotEmpty
        ? sub_especificacoes.map((e) => SubEspecificacao.fromMap(e)).toList()
        : [];
    return sub_especificacaoList;
  }

  Future<int> addSubEspecificacao(SubEspecificacao s) async {
    Database db = await instance.database;
    return await db.insert(SubEspecificacaoDataModel.getTabela(), s.toMap());
  }

  Future<int> removeSubEspecificacao(int id) async{
    Database db = await instance.database;
    return await db.delete(SubEspecificacaoDataModel.TABELA, where: 'id = ?', whereArgs: [id]);
  }

  Future<int> zerarTabelaSubEspecificacao() async {
    Database db = await instance.database;
    return await db.rawDelete(SubEspecificacaoDataModel.zerarTabela());

  }

  /******CRUD SETOR FUNCIONARIO******/

  Future<List<Setor>>getSetores() async {

    Database db = await instance.database;
    var setores = await db.query(SetorDataModel.getTabela(), orderBy: SetorDataModel.descricao_setor);
    List<Setor> setorList = setores.isNotEmpty
        ? setores.map((s) => Setor.fromMap(s)).toList()
        : [];
    return setorList;
  }

  Future<int> addsetor(Setor s) async {
    Database db = await instance.database;
    return await db.insert(SetorDataModel.getTabela(), s.toMap());
  }



  Future<int> zerarTabelaSetor() async {
    Database db = await instance.database;
    return await db.rawDelete(SetorDataModel.zerarTabela());

  }

  /******CRUD FUNCIONARIO******/

  Future<Funcionario?>getFuncionario(String cpf) async {

    Database db = await instance.database;
    var maps = await db.query(FuncionarioDataModel.getTabela(), where: 'cpf = ?', whereArgs: [cpf]);
    if (maps.isNotEmpty) {
      return Funcionario.fromMap(maps.first);
    }
    return null;

  }

  Future<List> getFuncionarioSetor(String cpf) async {
    Database db = await instance.database;
    var res = await db.rawQuery('''SELECT f.${FuncionarioDataModel.id}, f.${FuncionarioDataModel.cpf}, f.${FuncionarioDataModel.email},
                                f.${FuncionarioDataModel.nome}, f.${FuncionarioDataModel.telefone}, f.${FuncionarioDataModel.password},
                                s.${SetorDataModel.descricao_setor}       
                                FROM ${FuncionarioDataModel.getTabela()} f
                                INNER JOIN ${SetorDataModel.getTabela()} s ON s.${SetorDataModel.id} = f.${FuncionarioDataModel.setor_id} 
                             WHERE f.${FuncionarioDataModel.cpf} = '$cpf' ''');
    return res.toList();
  }

  Future<int> addFuncionario(Funcionario f) async {
    Database db = await instance.database;
    return await db.insert(FuncionarioDataModel.getTabela(), f.toMap());
  }

  Future<int> zerarTabelaFuncionario() async {
    Database db = await instance.database;
    return await db.rawDelete(FuncionarioDataModel.zerarTabela());

  }

  /******CRUD VIAGENS******/



  Future<List>getViagensFuncionario(int funcionario_id) async {

    Database db = await instance.database;
    var res = await db.rawQuery('''SELECT  *
                                   FROM ${ViajemDataModel.getTabela()} v 
                                   WHERE v.${ViajemDataModel.funcionario_id} = $funcionario_id''');

    return res.toList();


  }

  Future<int> addViajem(Viajem v) async {
    Database db = await instance.database;
    return await db.insert(ViajemDataModel.getTabela(), v.toMap());
  }

  Future<int> zerarTabelaViajem() async {
    Database db = await instance.database;
    return await db.rawDelete(ViajemDataModel.zerarTabela());

  }





}





















