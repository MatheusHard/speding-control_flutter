
import 'package:control_speding_2/data_model/cidade_data_model.dart';
import 'package:control_speding_2/data_model/especificacao_gastos_data_model.dart';
import 'package:control_speding_2/data_model/sub_especificacoes_gastos_data_model.dart';
import 'package:control_speding_2/data_model/uf_data_model.dart';
import 'package:control_speding_2/models/cidade.dart';
import 'package:control_speding_2/models/uf.dart';
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


}





















