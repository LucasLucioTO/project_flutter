import 'package:flutter/material.dart';

import '../components/drawer_menu.dart';

class AlterProductView extends StatefulWidget {
  const AlterProductView({super.key});

  @override
  State<AlterProductView> createState() {
    return _AlterProductView();
  }
}

class _AlterProductView extends State<AlterProductView> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      drawer: DrawerMenu(),
      appBar: AppBar(title: const Text('Alterar valores dos Produtos')),
      body: SingleChildScrollView(
        child: SizedBox(
          width: width,
          height: height,
          child: Padding(
            padding: const EdgeInsets.only(
              top: 20.0,
              left: 10,
              right: 15,
            ),
            child: Column(
              children: [
                TextField(
                  onChanged: (text) {},
                  decoration: const InputDecoration(
                    labelText: 'Nome do Produto',
                    border: OutlineInputBorder(),
                    icon: Icon(Icons.inbox_rounded),
                  ),
                ),
                const SizedBox(height: 10),
                TextField(
                  keyboardType: TextInputType.number,
                  onChanged: (text) {},
                  decoration: const InputDecoration(
                    labelText: 'Quantidade do Produto',
                    border: OutlineInputBorder(),
                    icon: Icon(Icons.production_quantity_limits),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
