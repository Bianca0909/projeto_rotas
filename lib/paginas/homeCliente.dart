import 'package:flutter/material.dart';
import 'package:projeto_rotas/paginas/util.dart';

class homeCliente extends StatefulWidget {
  const homeCliente({super.key});

  @override
  State<homeCliente> createState() => _homeClienteState();
}

class _homeClienteState extends State<homeCliente> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Util().criaCard(
              'paracetamol.jpg',
              'Paracetamol 750mg',
              'Paracetamol 750mg Com 20 Comprimidos Genérico Medquímica',
              300,
              275,
              12,
              5),
          Util().criaCard(
              'dipirona.jpg',
              'Paracetamol 750mg',
              'Paracetamol 750mg Com 20 Comprimidos Genérico Medquímica',
              300,
              275,
              12,
              5)
        ],
      )),
    );
  }
}
