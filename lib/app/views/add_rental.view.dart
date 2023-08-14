import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../components/drawer_menu.dart';
import '../controllers/rental_controller.dart';
import '../utils/input_mask.dart';

class AddRentalView extends StatefulWidget {
  @override
  State<AddRentalView> createState() => _AddRentalViewState();
}

class _AddRentalViewState extends State<AddRentalView> {
  final TextEditingController name = TextEditingController();
  final TextEditingController number = TextEditingController();
  final TextEditingController location = TextEditingController();
  final TextEditingController numberScaffold = TextEditingController();
  final TextEditingController numberPlanks = TextEditingController();
  final TextEditingController rentalDate = TextEditingController();
  late RentalController rentalController;
  String? text;

  @override
  void initState() {
    super.initState();
    rentalController = RentalController(
        name, number, location, numberScaffold, numberPlanks, rentalDate);
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      drawer: DrawerMenu(),
      appBar: AppBar(
        title: Text('Cadastro de Clientes'),
      ),
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
                  controller: name,
                  onChanged: (text) {},
                  decoration: const InputDecoration(
                    labelText: 'Nome do Cliente',
                    border: OutlineInputBorder(),
                    icon: Icon(Icons.person),
                  ),
                ),
                const SizedBox(height: 10),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: number,
                  onChanged: (text) {},
                  decoration: const InputDecoration(
                    labelText: 'Número do Cliente',
                    border: OutlineInputBorder(),
                    icon: Icon(Icons.phone_android),
                  ),
                  inputFormatters: [
                    PhoneNumberFormatter.phoneNumberFormatter,
                  ],
                ),
                const SizedBox(height: 10),
                TextField(
                  controller: location,
                  onChanged: (text) {},
                  decoration: const InputDecoration(
                    labelText: 'Local de Entrega',
                    border: OutlineInputBorder(),
                    icon: Icon(Icons.location_on),
                  ),
                ),
                const SizedBox(height: 10),
                TextField(
                  controller: numberScaffold,
                  onChanged: (text) {},
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: 'Quantidade de Andaimes',
                    border: OutlineInputBorder(),
                    icon: Icon(Icons.stairs_outlined),
                  ),
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                ),
                const SizedBox(height: 10),
                TextField(
                  controller: numberPlanks,
                  onChanged: (text) {},
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: 'Quantidade de Tabuas',
                    border: OutlineInputBorder(),
                    icon: Icon(Icons.ad_units_outlined),
                  ),
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                ),
                const SizedBox(height: 10),
                TextField(
                  controller: rentalDate,
                  onChanged: (text) {},
                  decoration: const InputDecoration(
                    labelText: 'Data de Aluguel',
                    border: OutlineInputBorder(),
                    icon: Icon(Icons.calendar_month_outlined),
                  ),
                  inputFormatters: [
                    PhoneNumberFormatter.dateFormatter,
                  ],
                ),
                const SizedBox(height: 15),
                OutlinedButton(
                  style: const ButtonStyle(
                    foregroundColor: MaterialStatePropertyAll(Colors.black),
                    backgroundColor: MaterialStatePropertyAll(Colors.cyan),
                  ),
                  child: const Text('Cadastrar'),
                  onPressed: () {
                    rentalController.saveClient();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
