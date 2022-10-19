import 'package:flutter/material.dart';
import 'package:projeto_rotas/paginas/util.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtSenha = TextEditingController();

  @override
  Widget build(BuildContext context) {
    fazLogin() {
      if (txtEmail.text == 'ADMIN' && txtSenha.text == 'ADMIN') {
        Navigator.of(context).pushNamed('/homeAdmin');
      } else if (txtEmail.text == 'CLIENTE' && txtSenha.text == 'CLIENTE') {
        Navigator.of(context).pushNamed('/homeCliente');
      }
      setState(() {
        txtEmail.text = "";
        txtSenha.text = "";
      });
    }

    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Util().criaTextField('Email', false, TextInputType.emailAddress, txtEmail),
          Util().criaTextField('Senha', true, TextInputType.none, txtSenha),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Util().criaBotao("Entrar", fazLogin, 50, 200, Color.fromARGB(255, 232, 248, 0)),
          ),
        ],
      ),
    );
  }
}
