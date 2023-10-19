import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _emailController = TextEditingController();
  final _senhaController = TextEditingController();


  String? _erroEmail;
  String? _erroSenha;

  _sucessoLogin() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Login'),
        content: Text('Sucesso'),
        actions: [
          TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Ok')),
        ],
      ),
    );
  }

  _falhaLogin() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Login'),
        content: Text('Login ou senha inválidos'),
        actions: [
          TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Ok')),
        ],
      ),
    );
  }

  bool _validarCampos(String email, String senha) {
    _erroEmail = null;
    _erroSenha = null;
    if (email.isEmpty) {
      _erroEmail = "E-mail é obrigatório";
    }
    if (senha.isEmpty) {
      _erroSenha = "Senha é obrigatório";
    }
    return _erroEmail == null && _erroSenha == null;
  }

  bool _autenticar(String email, String senha) {
    return email == "entra21@gmail.com" && senha == "1234";
  }

  _click() {
    String email = _emailController.text;
    String senha = _senhaController.text;

    if (_validarCampos(email, senha)) {
      if (_autenticar(email, senha)) {
        _sucessoLogin();
      } else {
        _falhaLogin();
      }
    }
    setState(() {});
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Login',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/image/dog.png'),
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    'Pet House',
                    style: TextStyle(fontSize: 28),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  child: TextField(
                      controller: _emailController,
                      decoration: InputDecoration(
                          labelText: 'Email',
                          hintText: 'Informe o seu e-mail',
                          border: OutlineInputBorder(),
                          errorText: _erroEmail),
                      onSubmitted: (text) {
                        _click;
                      }),
                ),
                SizedBox(height: 15),
                Container(
                  child: TextField(
                      controller: _senhaController,
                      decoration: InputDecoration(
                          labelText: 'Senha',
                          hintText: 'Informe a sua senha',
                          border: OutlineInputBorder(),
                          errorText: _erroSenha),
                      onSubmitted: (text) {
                        _click;
                      }),
                ),
                SizedBox(height: 15),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: _click,
                        child: Text('Login'),
                        style:
                            ElevatedButton.styleFrom(backgroundColor: Colors.green),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
