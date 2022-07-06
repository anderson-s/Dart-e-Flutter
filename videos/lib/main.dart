import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

void main() {
  runApp(const MaterialApp(
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
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    // ..Significa operador de chamada de métodos em cascata;
    //Ele vai ser usado para desconsiderar um retorno do objeto nesta situação
    // O VideoPlayer vai ser configurado
    //******Video a partir da URL****
    // _controller = VideoPlayerController.network(
    //     "https://file-examples.com/storage/fe8011d05762c5c5ab109dd/2017/04/file_example_MP4_480_1_5MG.mp4")
    //   ..initialize().then((_) {
    //     print("O video foi carregado!");
    //     setState(() {
    //       _controller.play();
    //     });
    //   });
    //Then vai ser utilizado após as operações anteriores forem utilizadas
    //O setState vai ser utilizado para fazer a mudança de estado do _controller

    //******Video a partir do arquivo****
    _controller = VideoPlayerController.asset("midia/video.mp4")
      ..setLooping(true)
      ..initialize().then((_) {
        // _controller.play();
      });
    //setLooping o video vai ser carregado e executado novamente
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        //Se video estiver carregado, executar, se não mostre o texto
        child: _controller.value.isInitialized
            ? AspectRatio(
                aspectRatio: _controller.value
                    .aspectRatio, //Pega os espaço disponível para mostrar o video
                child: VideoPlayer(_controller),
              )
            : const Text(
                "Pressione o play"), //O AspectRartio define o tamanho/área de exibição do video
      ),
      floatingActionButton: FloatingActionButton(
          child:_controller.value.isPlaying ? const Icon(Icons.pause) : const Icon(Icons.play_arrow) ,
          onPressed: () {
            setState(() {
              //Se o video estiver carregando, pause-o, senão ele executa
              _controller.value.isPlaying ? _controller.pause(): _controller.play();
            });
          }),
    );
  }
}