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
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Controle de gastos f"),
        backgroundColor: Colors.blue,
      ),
      body: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children:<Widget> [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 15),
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
            ],
          )),
    );
  }
}
