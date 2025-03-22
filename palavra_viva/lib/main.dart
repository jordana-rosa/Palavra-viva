import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math';

void main() => runApp(const MyApp()); // Usando const para MyApp

class MyApp extends StatelessWidget {
  const MyApp({super.key});  // Usando super.key para passar o parâmetro para a classe pai

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: const MyHomePage(title: "Palavras que Transformam"), // Passando o parâmetro title
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});  // Usando super.key aqui para o parâmetro 'key'

  final String title;

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  int _numeroAleatorio = 0;

  void _incrementCounter() {
    setState(() {
      _numeroAleatorio = Random().nextInt(10);  // Gera um número aleatório de 0 a 9
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Quantidade de palavras que transformam:',
              style: GoogleFonts.caveat(fontSize: 24),  // Usando a fonte Caveat com tamanho 24
            ),
            Text(
              '$_numeroAleatorio',
              style: GoogleFonts.caveat(fontSize: 48, fontWeight: FontWeight.bold),  // Usando a fonte Caveat em negrito e maior
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Incrementar',
        child: const Icon(Icons.add),  // Adicionada a palavra "const" para otimizar
      ),
    );
  }
}
