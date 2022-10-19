import 'package:flutter/material.dart';
import 'package:projeto_rotas/paginas/util.dart';


class HomeAdministrador extends StatefulWidget {
  const HomeAdministrador({super.key});

  @override
  State<HomeAdministrador> createState() => _HomeState();
}

class _HomeState extends State<HomeAdministrador> {

  @override
  Widget build(BuildContext context) {
    telacadastroCliente() {
      Navigator.of(context).pushNamed('/cadastroCliente');
    }

    telacadastroProduto() {
      Navigator.of(context).pushNamed('/cadastroProduto');
    }

    sair() {
      Navigator.of(context).pushNamed('/');
    }

    return Scaffold(

      body: SizedBox(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 30),
              Util()
                  .criaBotao('Cadastrar cliente', telacadastroCliente, 60, 200, Colors.black),
              const SizedBox(width: 30),
              Util()
                  .criaBotao('Cadastrar produto', telacadastroProduto, 60, 200, Colors.black),
            ],
          )
        ],
      )),
    );
  }
}
