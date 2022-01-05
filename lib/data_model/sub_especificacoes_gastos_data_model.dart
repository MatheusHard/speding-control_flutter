
class SubEspecificacaoDataModel{

  static const String TABELA = "tabelaSubEspecificacao";
  static const String id = "id";
  static const String descricao_sub_especificacao_gasto = "descricao_sub_especificacao_gasto";
  static const String especificacao_gasto_id = "especificacao_gasto_id";
  static const String id_web = "id_web";

  static String queryCriarTabela = "";

  static String criarTabela() {

    return '''CREATE TABLE $TABELA ($id INTEGER PRIMARY KEY,
              $descricao_sub_especificacao_gasto TEXT, $especificacao_gasto_id  INTEGER,
              $id_web INTEGER);''';
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
    return '''$TABELA.id, $TABELA.descricao_sub_especificacao_gasto, $TABELA.especificacao_gasto_id''';
  }
}

