
class GastoDataModel{

  static const String TABELA = "tabelaGasto";
  static const String id = "id";
  static const String cpf_devedor = "cpf_devedor";
  static const String data_gasto = "data_gasto";
  static const String fornecedor = "fornecedor";
  static const String imagem = "imagem";
  static const String latitude = "latitude";
  static const String longitude = "longitude";
  static const String subespecificacao_id = "subespecificacao_id";
  static const String valor = "valor";
  static const String viajem_id = "viajem_id";


  static String queryCriarTabela = "";

   static String criarTabela() {

    return '''CREATE TABLE $TABELA ($id INTEGER PRIMARY KEY,
              $cpf_devedor TEXT, $data_gasto DATETIME, $fornecedor TEXT,
              $imagem TEXT, $latitude TEXT, $longitude TEXT, 
              $subespecificacao_id INTEGER, $valor REAL, $viajem_id INTEGER);''';
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
     return '''$TABELA.id, $TABELA.cpf_devedor, $TABELA.data_gasto, $TABELA.fornecedor, $TABELA.imagem, $TABELA.latitude, $TABELA.longitude
               $TABELA.subespecificacao_id, $TABELA.valor, $TABELA.viajem_id''';
  }
}


