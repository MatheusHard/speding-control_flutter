
class SetorDataModel{

  static const String TABELA = "tabelaSetor";
  static const String id = "id";
  static const String descricao_setor = "descricao_setor";

   static String queryCriarTabela = "";

   static String criarTabela() {

    return '''CREATE TABLE $TABELA ($id INTEGER PRIMARY KEY,
              $descricao_setor TEXT);''';
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
     return '''$TABELA.id, $TABELA.descricao_setor''';
  }
}

