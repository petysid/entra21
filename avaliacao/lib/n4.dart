import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(home: Home()),
  );
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _contador = 0;

  _clicar(){
    setState(() {
      _contador++;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'App 4',
          style: TextStyle(fontSize: 25),
        ),
      ),
      backgroundColor: Colors.greenAccent,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(5.0),
            child: Row(
              children: [
                ElevatedButton(
                  onPressed: _clicar,
                  child: Text('Contar'),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                ),
                SizedBox(width: 8),
                Text('Contagem: $_contador'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
