import 'package:flutter/material.dart';
import 'package:projeto_rotas/paginas/util.dart';


class ClientePage extends StatefulWidget {
  const ClientePage({super.key});

  @override
  State<ClientePage> createState() => _ClientePageState();
}

class _ClientePageState extends State<ClientePage> {
  TextEditingController txtName = TextEditingController();
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtSenha = TextEditingController();

  cadastrar() {
    print('Cadastrado');
  }

  voltar() {
    Navigator.of(context).pushNamed('/home');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Util().criaAppBar('Cadastro de cliente', 20, Colors.white, Colors.amber),
      body: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Util().criaTextField('Nome', false, TextInputType.name, txtName),
            Util().criaTextField(
                'Email', false, TextInputType.emailAddress, txtEmail),
            Util().criaTextField('Senha', true, TextInputType.none, txtSenha),
            const SizedBox(height: 25),
            Util().criaBotao('Cadastrar', cadastrar, 50, 200, Colors.black),
          ],
        ),
      ),
    );
  }
}
