import 'dart:ffi';

import 'package:flutter/material.dart';

void main() => runApp(EasychargeApp());

class EasychargeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListaDeClientes(),
      ),
    );
  }
}

class ListaDeDividas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Dividas'),
      ),
      body: Text('Teste'),
    );
  }
}

class ListaDeClientes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Clientes'),
      ),
      body: Column(
        children: [
          ItemCliente(Cliente('Gabriel', 1)),
          ItemCliente(Cliente('Vitória', 2)),
          ItemCliente(Cliente('Daniel', 3)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}

class ItemCliente extends StatelessWidget {
  final Cliente _cliente;

  ItemCliente(this._cliente);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const Icon(Icons.person),
        title: Text(_cliente.nome),
        subtitle: Text(_cliente.id.toString()),
      ),
    );
  }
}

class Cliente {
  final String nome;
  final int id;

  Cliente(this.nome, this.id);
}
