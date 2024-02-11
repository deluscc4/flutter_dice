import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal.shade700,
        appBar: AppBar(
          title: Text('Dadoos'),
          backgroundColor: Colors.teal.shade900,
        ),
        body: Dadoos(),
      ),
    ),
  );
}

class Dadoos extends StatefulWidget {
  @override
  State<Dadoos> createState() => _DadoosState();
}

class _DadoosState extends State<Dadoos> {
  int esquerdo = 1;
  int direito = 1;

  void girarDados() {
    setState(() {
      esquerdo = Random().nextInt(6) + 1;
      direito = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                  girarDados();
              },
              child: Image.asset('imagens/dado$esquerdo.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                  girarDados();
              },
              child: Image.asset('imagens/dado$direito.png'),
            ),
          ),
        ],
      ),
    );
  }
}

