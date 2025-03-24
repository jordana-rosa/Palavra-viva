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
final List<String> _frases = [
  "No princípio, Deus criou os céus e a terra. - Gênesis 1:1",
  "O Senhor é meu pastor, nada me faltará. - Salmo 23:1",
  "Porque Deus amou o mundo de tal maneira que deu o seu Filho unigênito, para que todo aquele que nele crê não pereça, mas tenha a vida eterna. - João 3:16",
  "Tudo posso naquele que me fortalece. - Filipenses 4:13",
  "Entrega o teu caminho ao Senhor; confia nele, e ele tudo fará. - Salmo 37:5",
  "Confia no Senhor de todo o teu coração e não te estribes no teu próprio entendimento. - Provérbios 3:5",
  "Clama a mim, e responder-te-ei e anunciar-te-ei coisas grandes e firmes, que não sabes. - Jeremias 33:3",
  "Não to mandei eu? Esforça-te, e tem bom ânimo; não temas, nem te espantes; porque o Senhor teu Deus é contigo, por onde quer que andares. - Josué 1:9",
  "E sabemos que todas as coisas contribuem juntamente para o bem daqueles que amam a Deus, daqueles que são chamados por seu decreto. - Romanos 8:28",
  "O choro pode durar uma noite, mas a alegria vem pela manhã. - Salmo 30:5",
  "Deixo-vos a paz, a minha paz vos dou; não vo-la dou como o mundo a dá. - João 14:27",
  "Buscai primeiro o Reino de Deus, e a sua justiça, e todas estas coisas vos serão acrescentadas. - Mateus 6:33",
  "O Senhor dos Exércitos está conosco; o Deus de Jacó é o nosso refúgio. - Salmo 46:7",
  "Alegrai-vos sempre no Senhor; outra vez digo: alegrai-vos. - Filipenses 4:4",
  "Mas os que esperam no Senhor renovarão as forças, subirão com asas como águias, correrão, e não se cansarão; andarão, e não se fatigarão. - Isaías 40:31",
  "O Senhor te guardará de todo mal; ele guardará a tua alma. - Salmo 121:7",
  "Aquele que habita no esconderijo do Altíssimo, à sombra do Onipotente descansará. - Salmo 91:1",
  "Se Deus é por nós, quem será contra nós? - Romanos 8:31",
  "Em tudo dai graças, porque esta é a vontade de Deus em Cristo Jesus para convosco. - 1 Tessalonicenses 5:18"
];

  void _incrementCounter() {
    setState(() {
      _numeroAleatorio = Random().nextInt(19);  
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
              style: GoogleFonts.caveat(fontSize: 24),  
            ),
            Text(
              _frases[_numeroAleatorio],
              style: GoogleFonts.caveat(fontSize: 48, fontWeight: FontWeight.bold),  
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Incrementar',
        child: const Icon(Icons.add),  
      ),
    );
  }
}
