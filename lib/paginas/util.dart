import 'dart:html';

import 'package:flutter/material.dart';

class Util {
  criaAppBar(titulo, tamanho, cor, corAppBar) {
    return AppBar(
      title: criaTexto(titulo, tamanho, cor),
      centerTitle: true,
      backgroundColor: corAppBar,
    );
  }

  criaTexto(conteudo, tamanho, cor) {
    return Text(
      conteudo,
      style: TextStyle(fontSize: tamanho, color: cor),
    );
  }

  criaTextField(titulo, senha, tipoTeclado, controlador) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: TextField(
        controller: controlador,
        keyboardType: tipoTeclado,
        obscureText: senha,
        decoration:
            InputDecoration(labelText: titulo, border: OutlineInputBorder()),
      ),
    );
  }

  criaBotao(rotulo, funcao, altura, largura, cor) {
    return SizedBox(
      height: altura,
      width: largura,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.amber,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30))),
        onPressed: funcao,
        child: criaTexto(rotulo, 20, Colors.white),
      ),
    );
  }

  retornaImagem(imagem, altura, largura) {
    return Container(
      child: Image.asset('../assets/img/$imagem'),
      width: largura,
      height: altura,
    );
  }

  criaCard(imagem, titulo, descricao, larguraImg, alturaImg, tamanhoTitulo,
      tamanhoDescricao) {
    return Container(
      child: Padding(
        padding:
            const EdgeInsets.only(left: 20, right: 15, top: 25, bottom: 15),
        child: Column(
          children: [
            retornaImagem(imagem, larguraImg, alturaImg),
            criaTexto(titulo, tamanhoTitulo, Colors.black),
            criaTexto(descricao, tamanhoDescricao, Colors.black),
          ],
        ),
      ),
    );
  }
}
