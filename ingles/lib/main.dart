import 'package:flutter/material.dart';
import 'package:ingles/paginas.dart';
void main() => runApp(
      MaterialApp(
        home: const Home(),
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: const Color(0xfff5e9b9),
            appBarTheme: const AppBarTheme(backgroundColor: Color(0xff795548))),
      ),
    );

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(
      length: 3,
      vsync: this,
      initialIndex: 0,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Aprenda Inglês"),
        bottom: TabBar(
          indicatorWeight: 4, //Espessura do indicador
          labelStyle: const TextStyle(
            fontSize: 18, //Tamanho da fonte
            fontWeight: FontWeight.bold, //Fonte em negrito
          ),
          indicatorColor: Colors.white, //Cor do indicador
          // labelColor: Colors.green,//Cor do label
          controller: _controller,
          tabs: const [
            Tab(
              child: Text("Bichos"),
            ),
            Tab(
              child: Text("Números"),
            ),
            Tab(
              child: Text("Vogais"),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: const [
          Bichos(),
          Numeros(),
          Vogais(),
        ],
      ),
    );
  }
}
