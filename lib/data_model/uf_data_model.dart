
class UfDataModel{

  static const String TABELA = "tabelaUf";
  static const String id = "id";
  static const String descricao_uf = "descricao_uf";
  static const String sigla_uf = "sigla_uf";
  static const String id_web = "id_web";


  static String queryCriarTabela = "";

   static String criarTabela() {

    return '''CREATE TABLE $TABELA ($id INTEGER PRIMARY KEY,
              $descricao_uf TEXT, $sigla_uf  TEXT, $id_web INTEGER);''';
   }

   static String dropDatabase(){
    return   "DROP TABLE IF EXISTS $TABELA;";
  }

   static String zerarTabela() {

    return "DELETE FROM $TABELA;";
  }

   static String getTabela(){
    return TABELA;
  }

  static String getAtributos(){
     return '''$TABELA.id, $TABELA.descricao_uf, $TABELA.sigla_uf''';
  }
}

