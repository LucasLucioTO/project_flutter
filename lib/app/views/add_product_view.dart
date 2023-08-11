import 'package:flutter/material.dart';

import '../components/drawer_menu.dart';
import '../controllers/product_controller.dart';

class AddProductView extends StatefulWidget {
  const AddProductView({super.key});

  @override
  State<AddProductView> createState() {
    return _AddProductViewState();
  }
}

class _AddProductViewState extends State<AddProductView> {
  TextEditingController nameProd = TextEditingController();
  TextEditingController quantity = TextEditingController();
  late ProductController productController;

  void initState() {
    super.initState();
    productController = ProductController(nameProd, quantity);
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      drawer: DrawerMenu(),
      appBar: AppBar(title: const Text('Adicionar Produtos')),
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
                  controller: nameProd,
                  onChanged: (text) {},
                  decoration: const InputDecoration(
                    labelText: 'Nome do Produto',
                    border: OutlineInputBorder(),
                    icon: Icon(Icons.inbox_rounded),
                  ),
                ),
                const SizedBox(height: 10),
                TextField(
                  controller: quantity,
                  onChanged: (int) {},
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
