import 'package:flutter/material.dart';

void main() {
  runApp(const Contato());
}

class Contato extends StatelessWidget {
  const Contato({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      home: const pricipal(title: 'contato pessoal'),
    );
  }
}

// ignore: camel_case_types
class pricipal extends StatefulWidget {
  const pricipal({super.key, required this.title});
  final String title;

  @override
  State<pricipal> createState() => _PrincipalEstado();
}

class _PrincipalEstado extends State<pricipal> {
  final foto = const CircleAvatar(
    backgroundImage: AssetImage("200076433.jpg"),
    radius: 150,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contato'),
        leading: IconButton(
          icon: const Icon(Icons.account_circle, color: Colors.red),
          onPressed: () {},
        ),
      ),
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          foto,
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ],
      ),
    );
  }
}
