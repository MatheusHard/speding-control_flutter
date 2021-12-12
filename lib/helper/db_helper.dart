
import 'package:control_speding_2/data_model/uf_data_model.dart';
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
   // await db.execute(TipoDataModel.criarTabela());


  }

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
}





















