import 'package:flutter/material.dart';

void main() {
  runApp(const Aplicativo());
}

class Aplicativo extends StatelessWidget {
  const Aplicativo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text(
            'ariat',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: const Center(
          child: SizedBox(
            height: 200,
            width: 200,
            child: Text('ARIAT'),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
        bottomNavigationBar: BottomNavigationBar(items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Principal'),
          BottomNavigationBarItem(
              icon: Icon(Icons.business), label: 'Negócios'),
          BottomNavigationBarItem(icon: Icon(Icons.school), label: 'Escola'),
        ]),
        drawer: Drawer(
          backgroundColor: const Color.fromARGB(129, 38, 220, 237),
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 11, 123, 215),
                ),
                child: const Text(
                  'Menu App',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text('Pagina Inicial'),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.settings),
                title: const Text('configurações'),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.account_circle),
                title: const Text('perfil'),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
