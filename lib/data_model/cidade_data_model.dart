
class CidadeDataModel{

  static const String TABELA = "tabelaCidade";
  static const String id = "id";
  static const String id_web = "id_web";
  static const String descricao_cidade = "descricao_cidade";
  static const String uf_id = "uf_id";


   static String queryCriarTabela = "";

   static String criarTabela() {

    return '''CREATE TABLE $TABELA ($id INTEGER PRIMARY KEY,
              $descricao_cidade TEXT, $uf_id  INTEGER, $id_web INTEGER);''';
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
     return '''$TABELA.id, $TABELA.descricao_cidade, $TABELA.uf_id''';
  }
}

