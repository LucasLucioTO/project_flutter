import 'package:flutter/material.dart';

import '../models/client_model.dart';
import '../models/rental_model.dart';

class RentalController {
  late List<RentalModel> rentals = [];
  late List<ClientModel> clients = [];
  ClientModel clientModel = ClientModel('', '');
  RentalModel rentalModel = RentalModel('', '', 0, 0, '');
  final TextEditingController name;
  final TextEditingController number;
  final TextEditingController location;
  final TextEditingController numberScaffold;
  final TextEditingController numberPlanks;
  final TextEditingController rentalDate;
  dynamic numScaffold;
  dynamic numPlanks;

  RentalController(this.name, this.number, this.location, this.numberScaffold,
      this.numberPlanks, this.rentalDate) {
    clients = clientModel.getClients();
    rentals = rentalModel.getRentals();
    numScaffold = numberScaffold.text;
    numPlanks = numberPlanks.text;
  }

  void saveClient() {
    clientModel.setClients(ClientModel(name.text, number.text));
    print(numScaffold);
    print(numPlanks);

    rentalModel.setRentals(RentalModel(
        number.text, location.text, numScaffold, numPlanks, rentalDate.text));
    print(rentalModel.numberScaffold);
    print(rentalModel.numberPlanks);
  }
}
