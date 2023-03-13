import 'dart:math';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var _frases = [
    "A constância é a virtude pela qual as outras virtudes dão os seus frutos. (Artur Graf)",
    "Não deixe o ruído das opiniões dos outros abafar a sua própria voz interior",
    "Filho és pai serás, assim como fizeres assim acharás.",
    "Não desista, o começo é sempre a parte mais difícil.",
    "Só Deus tem a capacidade de ouvir um coração que grita em silêncio.",
    "A diferença entre a emplogação e o amor eterno é que a empolgação dura mais. (Oscar Wilde)",
    "Talvez eu seja enganado inúmeras vezes... Mas nunca deixarei de acreditar que alguém, em algum lugar, merece a minha confiança!",
    "Ladrão que rouba a ladrão tem cem anos de perdão.",
    "A ciência descreve as coisas como são; a arte, como são sentidas, como se sente que são.",
    "Sou muito além do que se vê",
    "Primeiro a chuva depois o Arco-Íris. Se acostume a ordem é essa.",
    "O número dos que nos invejam confirma as nossas capacidades.",
    "Se você fosse um bebida eu repetiria a dose. Se você fosse uma droga eu entraria em overdose.",
    "Não existem meias verdades.",
    "A verdadeira escola da arte não é a vida mas a arte.",
    "Um conhecido nunca te vê chorar. Um amigo tem o ombro molhado de tanto pranto.",
    "Jamais me arrependerei de amar intensamente, só assim você comete as mais belas loucuras de amor!",
    "Os amigos são como um investimento bancário. Quanto mais tempo você os tenha, mais vale a amizade.",
    "Uma coisa não é necessariamente verdadeira só porque um homem dá a vida por ela.",
    "Ter muitos amigos é não ter nenhum. (Arístóteles)",
    "Por muito raro que seja o verdadeiro amor, não o é tanto como a verdadeira amizade.",
    "Humanidade está perdendo seus maiores gênios.",
    "Ninguém comtemplará o céu se acolhe o inferno no coração.",
    "Quem usa o nome da justiça para defender seus erros é capaz de muito mais para desvirtuar um direito.",
    "Devemos ser modestos e lembrar-nos de que os outros são inferiores a nós.",
    "Três coisas devem ser feitas por um juiz: ouvir atentamente, considerar sobriamente e decidir imparcialmente. (Sócrates)",
    "Não me interessa nenhuma religião cujos princípios não melhoram nem levam em consideração as condições dos animais.",
    "Valorize aquele que o valoriza, e não trate como prioridade quem o trata como uma opção.",
    "A finalidade da arte é, simplesmente, criar um estudo da alma.",
    "Enquanto a cor da pele for mais importante que o brilho dos olhos, haverá guerra."
  ];

  var _fraseGerada = "Clique abaixo para gerar uma frase!";

  void _gerarFrase(){

    var numero = Random().nextInt(_frases.length);

    setState(() {
      _fraseGerada = _frases[numero];
    });


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do dia"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16),
          //width: double.infinity,
          // decoration: BoxDecoration(
          //     border: Border.all(width: 3, color: Colors.amber)
          // ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset("images/logo.png"),
              Text(
                _fraseGerada,
                textAlign: TextAlign.justify,
                style: TextStyle(
                    fontSize: 25,
                    fontStyle: FontStyle.italic,
                    color: Colors.black
                ),
              ),
              ElevatedButton(
                child: Text(
                  "Nova frase",
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                ),
                onPressed: _gerarFrase,
              )
            ],
          ),
        ),
      ),
    );
  }
}
