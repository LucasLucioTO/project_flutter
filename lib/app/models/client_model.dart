class ClientModel {
  //int id;
  String name;
  String number;
  List<ClientModel> clients = [];

  ClientModel(this.name, this.number) {}

  ClientModel clientModel() {
    return ClientModel('', '');
  }

  /*int getId() => id;
  setId(int id) => this.id = id;

  String getName() {
    return name;
  }*/

  String getNumber() {
    return number;
  }

  List<ClientModel> getClients() {
    return clients;
  }

  setClients([ClientModel? client]) {
    clients.add(client!);
  }
}
