import 'package:flutter/material.dart';

class DrawerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      //width: 100,
      child: Column(children: [
        UserAccountsDrawerHeader(
          accountName: Text('Lucio Oliveira'),
          accountEmail: Text('lucio@andaime.com'),
        ),
        ListTile(
          leading: Icon(Icons.assignment),
          title: Text('Lista de alugueis'),
          onTap: () {
            Navigator.of(context).pushReplacementNamed('/home');
          },
        ),
        ListTile(
          leading: Icon(Icons.add_box_outlined),
          title: Text('Adicionar Produto'),
          onTap: () {
            Navigator.of(context).pushReplacementNamed('/addProduct');
          },
        ),
        ListTile(
          leading: Icon(Icons.assignment_add),
          title: Text('Adicionar Aluguel'),
          onTap: () {
            Navigator.of(context).pushReplacementNamed('/addRental');
          },
        ),
        ListTile(
          leading: Icon(Icons.bookmark_add),
          title: Text('Alterar valores'),
          onTap: () {
            Navigator.of(context).pushReplacementNamed('/addAlterProd');
          },
        ),
        ListTile(
          leading: Icon(Icons.exit_to_app_rounded),
          title: Text('sair'),
          onTap: () {
            Navigator.of(context).pushReplacementNamed('/');
          },
        ),
      ]),
    );
  }
}
