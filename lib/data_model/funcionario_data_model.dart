
class FuncionarioDataModel{

  static const String TABELA = "tabelaFuncionario";
  static const String id = "id";
  static const String cpf = "cpf";
  static const String email = "email";
  static const String nome = "nome";
  static const String telefone = "telefone";
  static const String password = "password";
  static const String setor_id = "setor_id";

   static String queryCriarTabela = "";

   static String criarTabela() {

    return '''CREATE TABLE $TABELA ($id INTEGER PRIMARY KEY,
              $cpf TEXT, $email TEXT, $nome TEXT, $telefone TEXT,
              $password TEXT, $setor_id  INTEGER);''';
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
     return '''$TABELA.id, $TABELA.cpf, $TABELA.email, $TABELA.nome, $TABELA.telefone, $TABELA.password, $TABELA.setor_id''';
  }
}

