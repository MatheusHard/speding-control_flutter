
class EspecificacaoDataModel{

  static const String TABELA = "tabelaEspecificacao";
  static const String id = "id";
  static const String descricao_especificacao_gasto = "descricao_especificacao_gasto";

  static String queryCriarTabela = "";

  static String criarTabela() {

    return '''CREATE TABLE $TABELA ($id INTEGER PRIMARY KEY,
              $descricao_especificacao_gasto TEXT);''';
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
    return '''$TABELA.id, $TABELA.descricao_especificacao_gasto''';
  }
}

