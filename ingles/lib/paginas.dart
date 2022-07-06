import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class Bichos extends StatefulWidget {
  const Bichos({Key? key}) : super(key: key);

  @override
  State<Bichos> createState() => _BichosState();
}

class _BichosState extends State<Bichos> {
  AudioCache _audioCache = AudioCache(prefix: "sons/");

  _executar(String nomeAudio) async{
    await _audioCache.play("$nomeAudio.mp3");
  }

  @override
  void initState(){
    super.initState();
    _audioCache.loadAll(["cao.mp3", "gato.mp3", "leao.mp3", "macaco.mp3", "ovelha.mp3", "vaca.mp3"],);
  }

  @override
  Widget build(BuildContext context) {
    
    double largura = MediaQuery.of(context).size.width;
    double altura = MediaQuery.of(context).size.height;

    return GridView.count(
      crossAxisCount: 2, //Divisão de colunas
      // scrollDirection: Axis.horizontal,//Direção do scroll, pode ser horizontal, vertical
      childAspectRatio: MediaQuery.of(context).size.aspectRatio * 1.8, //Tamanho dos espaços
      children: [
        GestureDetector(
          //Quando clicar em uma das colunas
          onTap: () {
            _executar("cao");
          },
          child: Image.asset("assets/images/cao.png"),
        ),
        GestureDetector(
          //Quando clicar em uma das colunas
          onTap: () {
            _executar("gato");
          },
          child: Image.asset("assets/images/gato.png"),
        ),
        GestureDetector(
          //Quando clicar em uma das colunas
          onTap: () {
            _executar("leao");
          },
          child: Image.asset("assets/images/leao.png"),
        ),
        GestureDetector(
          //Quando clicar em uma das colunas
          onTap: () {
            _executar("macaco");
          },
          child: Image.asset("assets/images/macaco.png"),
        ),
        GestureDetector(
          //Quando clicar em uma das colunas
          onTap: () {
            _executar("ovelha");
          },
          child: Image.asset("assets/images/ovelha.png"),
        ),
        GestureDetector(
          //Quando clicar em uma das colunas
          onTap: () {
            _executar("vaca");
          },
          child: Image.asset("assets/images/vaca.png"),
        ),
      ],
    );
  }
}

class Numeros extends StatefulWidget {
  const Numeros({Key? key}) : super(key: key);

  @override
  State<Numeros> createState() => _NumerosState();
}

class _NumerosState extends State<Numeros> {
   AudioCache _audioCache = AudioCache(prefix: "sons/");

  _executar(String nomeAudio){
    _audioCache.play("$nomeAudio.mp3");
  }

  @override
  void initState(){
    super.initState();
    _audioCache.loadAll(["1.mp3", "2.mp3", "3.mp3", "4.mp3", "5.mp3", "6.mp3"],);
  }
  @override
  Widget build(BuildContext context) {
    
    double largura = MediaQuery.of(context).size.width;
    double altura = MediaQuery.of(context).size.height;

    return GridView.count(
      crossAxisCount: 2, //Divisão de colunas
      // scrollDirection: Axis.horizontal,//Direção do scroll, pode ser horizontal, vertical
      childAspectRatio: MediaQuery.of(context).size.aspectRatio * 1.8, //Tamanho dos espaços
      children: [
        GestureDetector(
          //Quando clicar em uma das colunas
          onTap: () {
            _executar("1");
          },
          child: Image.asset("assets/images/1.png"),
        ),
        GestureDetector(
          //Quando clicar em uma das colunas
          onTap: () {
            _executar("2");
          },
          child: Image.asset("assets/images/2.png"),
        ),
        GestureDetector(
          //Quando clicar em uma das colunas
          onTap: () {
            _executar("3");
          },
          child: Image.asset("assets/images/3.png"),
        ),
        GestureDetector(
          //Quando clicar em uma das colunas
          onTap: () {
            _executar("4");
          },
          child: Image.asset("assets/images/4.png"),
        ),
        GestureDetector(
          //Quando clicar em uma das colunas
          onTap: () {
            _executar("5");
          },
          child: Image.asset("assets/images/5.png"),
        ),
        GestureDetector(
          //Quando clicar em uma das colunas
          onTap: () {
            _executar("6");
          },
          child: Image.asset("assets/images/6.png"),
        ),
      ],
    );
  }
}

class Vogais extends StatefulWidget {
  const Vogais({Key? key}) : super(key: key);

  @override
  State<Vogais> createState() => _VogaisState();
}

class _VogaisState extends State<Vogais> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
