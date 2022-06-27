import 'package:flutter/material.dart';

import '../../models/cliente.dart';

class ListaDeClientes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Clientes'),
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
        child: const Icon(Icons.add),
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