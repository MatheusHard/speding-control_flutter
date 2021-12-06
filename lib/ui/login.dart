import 'package:control_speding_2/utils/core/app_text_styles.dart';
import 'package:control_speding_2/utils/metods/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _user = TextEditingController();
  final TextEditingController _password = TextEditingController();
  late FocusNode _myFocusNode;
  late FocusNode _myFocusNode_2;

  @override
  void initState (){

    _myFocusNode = FocusNode();
    _myFocusNode_2 = FocusNode();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     /* appBar: AppBar(
        centerTitle: true,
        title: const Text("Controle de gastos f"),
        backgroundColor: Colors.blue,
      ),*/
      body:


      Padding(
        padding: const EdgeInsets.all(0),
        child: Center(
          child: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFFE5E6E4),
                      Color(0xFFECECEB),
                      Color(0xFFF2F3F2),
                      Color(0xFFF9F9F8),
                    ],
                    stops: [0.1,0.4,0.7,0.9]
                )
            ),
          child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children:<Widget> [

                  const Center(
                    child: Text("Login", style: TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold

                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(50, 20, 50, 30),
                    child: TextFormField(
                      controller: _user,
                      focusNode: _myFocusNode,
                      keyboardType: TextInputType.text,
                      decoration: const InputDecoration(
                          labelText: "Usuario:",
                          hintText: "digite o usuario",
                          icon: Icon(Icons.perm_identity)
                      ),
                      validator: (value){
                        if(value!.isEmpty || value == ""){
                          _myFocusNode.requestFocus();
                          //Utils.showDefaultSnackbar(context, );
                          return "Insira seu nome!!!";

                        }
                      },
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(50, 0, 50, 50),
                    child: TextFormField(
                      obscureText: true,
                      controller: _user,
                      focusNode: _myFocusNode_2,
                      keyboardType: TextInputType.text,
                      decoration: const InputDecoration(
                          labelText: "Senha:",
                          hintText: "digite a senha",
                          icon: Icon(Icons.perm_identity)
                      ),
                      validator: (value){
                        if(value!.isEmpty || value == ""){
                          _myFocusNode_2.requestFocus();
                          //Utils.showDefaultSnackbar(context, );
                          return "Insira a senha!!!";

                        }
                      },
                    ),
                  ),
                  /*************BUTTON***************/

    Padding(
    padding: const EdgeInsets.symmetric(horizontal: 120, vertical: 10),
    child: Center(
    child: ElevatedButton(
    onPressed: () {
    /*if(_selectedFile != null)  {
    if(_formKey.currentState.validate()) {
    _cadastrarConta();
    }
    }else{
    Utils.showDefaultSnackbar(_scaffoldKey, "Foto obrigatória!!! ");
    }*/
    },
    style: ElevatedButton.styleFrom(
    padding: EdgeInsets.zero,
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(20))),
    child: Ink(

    decoration: BoxDecoration(
    gradient: const LinearGradient(colors:
    [
      Color(0xFF57B6E5),
      Color.fromRGBO(130, 87, 229, 0.695),
    ]),
    borderRadius: BorderRadius.circular(20)),
    child:
    Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    const Icon(Icons.save_rounded),
    Container(
    width: 150,
    height: 50,
    alignment: Alignment.center,
    child:

    Text(
    'Acessar',
    style: AppTextStyles.titleBold,
    ),


    ),
    ],)))))
   /***************FIM*****************/
      ],)),
        ),
        ),
      ),
    );
  }




}
