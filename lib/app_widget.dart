import 'package:flutter/material.dart';

import 'app/views/add_product_view.dart';
import 'app/views/add_rental.view.dart';
import 'app/views/alter_product_view.dart';
import 'app/views/login_view.dart';
import 'app/views/rental_list_view.dart';

class AppWidget extends StatelessWidget {
  final String title;

  const AppWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // ignore: deprecated_member_use
      routes: {
        '/': (context) => LoginPage(),
        '/home': (context) => RentalListPage(),
        '/addRental': (context) => AddRentalView(),
        '/addProduct': (context) => AddProductView(),
        '/addAlterProd': (context) => AlterProductView(),
      },
    );
  }
}
