import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _alturaController = TextEditingController();
  final _pesoController = TextEditingController();

  String _mensagem = "Informe sua altura e peso";
  String _imc = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculadora IMC'),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      backgroundColor: Colors.amber[200],
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                  Image.asset('assets/image/fat.png', height: 200,
                ),
                SizedBox(height: 20),
                Text(_mensagem, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                Text(_imc),
                SizedBox(height: 20),
                const Row(),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: _alturaController,
                        decoration: InputDecoration(
                          labelText: 'Altura',
                          suffixText: 'm',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: TextField(
                        controller: _pesoController,
                        decoration: InputDecoration(
                          labelText: 'Peso',
                          suffixText: 'kg',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
