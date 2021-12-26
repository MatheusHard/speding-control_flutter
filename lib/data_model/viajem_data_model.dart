
class ViajemDataModel{

  static const String TABELA = "tabelaViajem";
  static const String id = "id";
  static const String data_inicial = "data_inicial";
  static const String data_final = "data_final";
  static const String gasto_total = "gasto_total";
  static const String saldo = "saldo";
  static const String cidade_id = "cidade_id";
  static const String funcionario_id = "funcionario_id";

   static String queryCriarTabela = "";

   static String criarTabela() {

    return '''CREATE TABLE $TABELA ($id INTEGER PRIMARY KEY,
              $data_inicial DATETIME, $data_final DATETIME, $gasto_total REAL,
              $saldo REAL, $cidade_id INTEGER, $funcionario_id  INTEGER);''';
   }

   static String dropTable(){
    return   "DROP TABLE IF EXISTS $TABELA;";
  }

   static String zerarTabela() {

    return "DELETE FROM $TABELA;";
  }

   static String getTabela(){
    return TABELA;
  }

  static String getAtributos(){
     return '''$TABELA.id, $TABELA.data_inicial, $TABELA.data_final, $TABELA.gasto_total, $TABELA.saldo, $TABELA.cidade_id, $TABELA.funcionario_id''';
  }
}

