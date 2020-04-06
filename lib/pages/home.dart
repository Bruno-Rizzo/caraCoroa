import 'dart:math';
import 'package:cara_coroa/pages/result.dart';
import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  pageResult(){

    var itens     = ['cara','coroa'];
    var numero    = Random().nextInt(itens.length); 
    var resultado = itens[numero]; 

    Navigator.push(
      context,
       MaterialPageRoute(
         builder: (context)=>Result(resultado),
       ),
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0XFF60BD8C),
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/logo.png'),
            Padding(
              padding: EdgeInsets.only(top: 30),
                child: GestureDetector(
                          child: Image.asset('assets/botao_jogar.png'),
                          onTap: () => pageResult(),
                        ),
            ),   
          ],
        ),
      ),
    );

  }

}