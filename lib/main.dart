import 'package:flutter/material.dart';
import 'package:projeto_rotas/paginas/cliente.dart';
import 'package:projeto_rotas/paginas/homeAdministrador.dart';
import 'package:projeto_rotas/paginas/homeCliente.dart';
import 'package:projeto_rotas/paginas/login.dart';
import 'package:projeto_rotas/paginas/produto.dart';

void main() {
  runApp(const Main());
}

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginPage(),
        '/homeAdmin': (context) => const HomeAdministrador(),
        '/homeCliente': (context) => const homeCliente(),
        '/cadastroCliente': (context) => const ClientePage(),
        '/cadastroProduto': (context) => const ProdutoPage()
      },
    );
  }
}
