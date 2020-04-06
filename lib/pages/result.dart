import 'package:flutter/material.dart';

class Result extends StatefulWidget {

  final String valor;
  Result(this.valor);

  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {

  @override
  Widget build(BuildContext context) {

    var caminhoImagem = 'assets/moeda_cara.png';

    if(widget.valor == 'cara'){
      caminhoImagem = 'assets/moeda_cara.png';
    }else{
      caminhoImagem = 'assets/moeda_coroa.png';
    }

    return Scaffold(
      backgroundColor: Color(0XFF60BD8C),
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(caminhoImagem),
            Padding(
              padding: EdgeInsets.only(top: 30),
                child: GestureDetector(
                          child: Image.asset('assets/botao_voltar.png'),
                          onTap: () => Navigator.pop(context),
                        ),
            ),
          ],
        ),
      ),
    );

  }

}