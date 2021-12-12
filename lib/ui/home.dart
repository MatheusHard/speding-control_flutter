import 'package:control_speding_2/ui/viagens.dart';
import 'package:control_speding_2/ui/widgets/appbar/app_bar_widget.dart';
import 'package:control_speding_2/utils/core/app_gradients.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _currentIndex = 0;
  final tabs = [

    const Viagens(),
    const Center(child: Text("Cadastro")),
    const Center(child: Text("Nuvem")),
    //Cadastro_Avaliacao(),
    const Center(child: Text("EXIT"))
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

        backgroundColor: Colors.white,
        appBar: AppBarWidget(),
        body: tabs[_currentIndex],


        bottomNavigationBar:
        Container(
            decoration: const BoxDecoration(
                gradient: AppGradients.linear
            ),
            child:
            CurvedNavigationBar(
              items: const <Widget>[
                Icon(Icons.home, size: 20, color: Colors.white,),
                Icon(Icons.add, size: 20, color: Colors.white,),
                Icon(Icons.cloud_download, size: 20, color: Colors.white,),
                Icon(Icons.exit_to_app, size: 20, color: Colors.white,),
              ],
              color: Colors.transparent,
              buttonBackgroundColor: Colors.transparent,
              backgroundColor: Colors.transparent,

              animationCurve: Curves.easeInCubic,
              animationDuration: const Duration(milliseconds: 600),
              index: 0,
              height: 50,
              onTap: (index){
                setState(() {
                  _currentIndex = index;
                });
              },
            ) /*BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.shifting,
        selectedFontSize: 12.0,
        iconSize: 20,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home, color: Colors.white,),
              backgroundColor: Colors.orangeAccent,
              title: Text(Textos().home, style: TextStyle(color: Colors.white),)),
          BottomNavigationBarItem(icon: Icon(Icons.add, color: Colors.white,),
              backgroundColor: Colors.greenAccent,
              title: Text(Textos().cadastrar, style: TextStyle(color: Colors.white),)),
          BottomNavigationBarItem(icon: Icon(Icons.cloud_download, color: Colors.white,),
              backgroundColor: Colors.blueAccent,
              title: Text(Textos().sincronizar, style: TextStyle(color: Colors.white),)),
          BottomNavigationBarItem(icon: Icon(Icons.exit_to_app, color: Colors.white,),
              backgroundColor: Colors.redAccent,
              title: Text(Textos().sair, style: TextStyle(color: Colors.white),)),
        ],
        onTap: (index){
          setState(() {
            _currentIndex = index;
          });
        },
      ),*/
        )
    );
  }
}
