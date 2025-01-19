import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 7, 7, 30), // Define o fundo preto um pouco mais claro
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 80, 80, 80), // Define a cor da barra superior como cinza escuro
        title: const Text('Layout'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.symmetric(vertical: 64.0, horizontal: 16.0), // Reduz ainda mais as laterais do quadrado
              decoration: BoxDecoration(
                color: Colors.black, // Define a cor de fundo do quadrado preta
                border: Border.all(color: Colors.blue, width: 2.0),
                borderRadius: BorderRadius.circular(12.0), // Adiciona bordas arredondadas
                boxShadow: [
                  BoxShadow(
                    color: Colors.lightBlueAccent.withOpacity(0.5), // Sombra azul claro
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // Deslocamento da sombra
                  ),
                ],
              ),
              child: const Text(
                'Calculadora',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue, // Define a cor azul
                  shadows: [
                    Shadow(
                      offset: Offset(2.0, 2.0),
                      blurRadius: 3.0,
                      color: Color.fromARGB(255, 100, 149, 237), // Sombra azul claro menos clara
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
