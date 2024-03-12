import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(const Principal());
}

class Principal extends StatelessWidget {
  const Principal({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'API',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: home(),
    );
  }
}

class home extends StatefulWidget {
  @override
  home_state createState() => home_state();
}

// ignore: camel_case_types
class home_state extends State<home> {
  TextEditingController controleTexto = TextEditingController();
  String conteudo = '';
  String imagem = '';

  Future<void> buscar() async {
    String entrada = controleTexto.text;
    // ignore: unused_local_variable
    String url = 'https://pt.wikipedia.org/api/rest_v1/page/summary/$entrada';

    final resposta = await http.get(Uri.parse(url));

    if (resposta.statusCode == 200) {
      Map<String, dynamic> dado = json.decode(resposta.body);
      setState(() {
        conteudo = dado['extract'];
        imagem = dado['originalimage']['source'];
      });
    } else {
      conteudo = 'Nada foi encontrado';
      imagem = '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(' app com API'),
        backgroundColor: Colors.red,
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://images.unsplash.com/photo-1609769322709-2de28ae6503a?q=80&w=1025&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                fit: BoxFit.cover,
              ),
            ),
          ),
           Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: Card(
                color: const Color.fromARGB(78, 255, 255, 255),
                elevation: 5.0,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      const Text('Mundopoker'),
                      TextField(
                        controller: controleTexto,
                        decoration:  const InputDecoration(
                          labelText: 'Digite o texto',
                        ),
                      ),
                       const SizedBox(height: 20.0,),
                          ElevatedButton(onPressed: buscar, child: const Text('buscar')),

                       const SizedBox(height: 20.0),
                       const Text(
                        'Resultado',
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                       const SizedBox(height: 10.0),
                       Text(conteudo, style: const TextStyle(fontSize: 16.0)),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
