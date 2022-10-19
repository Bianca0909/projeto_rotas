import 'package:flutter/material.dart';
import 'package:projeto_rotas/paginas/util.dart';

class ProdutoPage extends StatefulWidget {
  const ProdutoPage({super.key});

  @override
  State<ProdutoPage> createState() => _ProdutoPageState();
}

class _ProdutoPageState extends State<ProdutoPage> {
  TextEditingController txtName = TextEditingController();
  TextEditingController txtValor = TextEditingController();
  TextEditingController txtDescricao = TextEditingController();

  cadastrar() {
    print('Cadastrado');
  }

  escolheFoto() {
    print('foto');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Util().criaAppBar('Cadastro de produto', 20, Colors.white, Colors.amber),
      body: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Util().criaTextField('Nome', false, TextInputType.name, txtName),
            Util()
                .criaTextField('Valor', false, TextInputType.number, txtValor),
            Util().criaTextField(
                'Descrição', false, TextInputType.text, txtDescricao),
            const SizedBox(height: 15),
            Util().criaBotao('Escolher foto', escolheFoto, 50, 200, Colors.black),
            const SizedBox(height: 15),
            Util().criaBotao('Cadastrar', cadastrar, 50, 200, Colors.black),
          ],
        ),
      ),
    );
  }
}
