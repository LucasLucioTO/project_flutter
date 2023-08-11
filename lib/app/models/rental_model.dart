class RentalModel {
  //late int _id;
  String _numberClient;
  String _location;
  int _numberScaffold;
  int _numberPlanks;
  String _rentalDate;
  late String _deliveryDate;
  List<RentalModel> rentals = [];

  RentalModel(this._numberClient, this._location, this._numberScaffold,
      this._numberPlanks, this._rentalDate);

  /*int get id => _id;

  set id(int value) {
    _id = value;
  }*/

  String get numberClient => _numberClient;

  set numberClient(String value) {
    _numberClient = value;
  }

  String get location => _location;

  set location(String value) {
    _location = value;
  }

  int get numberScaffold => _numberScaffold;

  set numberScaffold(int value) {
    _numberScaffold = value;
  }

  int get numberPlanks => _numberPlanks;

  set numberPlanks(int value) {
    _numberPlanks = value;
  }

  String get rentalDate => _rentalDate;

  set rentalDate(String value) {
    _rentalDate = value;
  }

  List<RentalModel> getRentals() {
    return rentals;
  }

  setRentals(RentalModel value) {
    rentals.add(value);
  }

  String get deliveryDate => _deliveryDate;

  set deliveryDate(String value) {
    _deliveryDate = value;
  }
}
