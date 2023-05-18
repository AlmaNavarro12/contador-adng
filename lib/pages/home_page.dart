import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int contador = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Contador'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            const Text('Número de clicks'),
            Text('$contador'),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: _crearBotones(),
    );
    
  }

  Widget _crearBotones() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:  [
          FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () => _botonMas()),
          const Spacer(),
          FloatingActionButton(
            child: const Icon(Icons.restore),
            onPressed: () => _botonCero()),
          const SizedBox(width: 16),
          FloatingActionButton(
            child: const Icon(Icons.remove),
            onPressed: () => _botonMenos())
        ],
      ),
    );
  }

  void _botonMas() {
    setState(() => contador++);
  }

  void _botonCero() {
    setState(() => contador=0);
  }

  void _botonMenos() {
    setState(() {
      if (contador > 0) {
        contador--;
      }
    });
  }
}