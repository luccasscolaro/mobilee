import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(const Aplicativo());
}

class Aplicativo extends StatefulWidget {
  const Aplicativo({super.key});

  @override
  State<Aplicativo> createState() => _EstadoAplicativo();
}

class _EstadoAplicativo extends State<Aplicativo> {
  int contador1 = 0;
  int contador2 = 0;
  // ignore: unused_field, prefer_final_fields
  int _tempo = 60;
  // ignore: unused_field
  late Timer _timer;
  // ignore: unused_field, non_constant_identifier_names
  final bool _Clique = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 54, 216, 244),
          title: const Text('jogador1 '),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('contador1: $contador1'),
          ],
        )),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 50.0),
              child: FloatingActionButton(
                onPressed: () {
                  setState(() {
                    contador1++;
                  });
                },
                tooltip: 'Incrementar Contador1',
                child: const Icon(Icons.add),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
