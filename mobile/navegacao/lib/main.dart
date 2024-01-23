import 'package:flutter/material.dart';

void main() {
  runApp(const Aplicativo());
}

class Aplicativo extends StatelessWidget {
  const Aplicativo({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Paginal(),
    );
  }
}

class Paginal extends StatelessWidget {
  const Paginal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Página 1'),
        backgroundColor: const Color.fromARGB(255, 54, 216, 244),
      ),
      body: Center(
        child: Column(
          children: [
            Image.network(
              'https://a.cdn-hotels.com/gdcs/production120/d1303/6b16392c-977c-4aad-a9b0-1971bbffb0dc.jpg',
              width: 300,
              height: 300,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Pasgina2()),
                );
              },
              child: const Text('Ir para pagina 2'),
            ),
          ],
        ),
      ),
    );
  }
}

class Pasgina2 extends StatelessWidget {
  const Pasgina2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: const Text('pagina 2'), backgroundColor: Colors.red),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTp63Y4TYnIZRgJMxNfWR7nAq_u6yyo34tSMlV1CUTpJmg_3WjXnmP4oIos2_RhC_ImYlU&usqp=CAU',
              width: 400,
              height: 400,
            ),
          
          ],
        ),
      ),
    );
  }
}
