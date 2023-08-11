import 'package:flutter/material.dart';

import '../components/drawer_menu.dart';

class RentalListPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return RentalListPageState();
  }
}

class RentalListPageState extends State<RentalListPage> {
  @override
  Scaffold build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      drawer: DrawerMenu(),
      appBar: AppBar(
        title: Text('Aluguel de Andaime'),
      ),
      body: SizedBox(
        width: width,
        height: height,
        child: Column(children: [
          homeBarInfo(),
          homePageBody(width, height, context),
        ]),
      ),
    );
  }

  Widget homePageBody(double width, double height, BuildContext context) {
    //int count = 1;
    return SingleChildScrollView(
      child: SizedBox(
          /*child: Padding(
          padding: const EdgeInsets.all(15),
          child: Expanded(
            child: ListView.builder(
              itemCount: count,
              itemBuilder: (context, index) {
                return Card(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(children: [
                      Row(children: [
                        Icon(Icons.person),
                        Text('Nome do cliente')
                      ]),
                      Row(children: [
                        Icon(Icons.stairs_outlined),
                        Text('Quantidad de andaimes')
                      ]),
                      Row(children: [
                        Icon(Icons.calendar_month_outlined),
                        Text('Quantidade de dias de aluguel')
                      ]),
                    ]),
                  ),
                );
              },
            ),
          ),
        ),*/
          ),
    );
  }

  Widget homeBarInfo() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Row(
            children: [
              Icon(Icons.person),
              SizedBox(width: 5),
              Text('Nº'),
            ],
          ),
          Row(
            children: [
              Icon(Icons.stairs_outlined),
              SizedBox(width: 5),
              Text('Nº '),
            ],
          ),
          Row(
            children: [
              Icon(Icons.ad_units_outlined),
              SizedBox(width: 5),
              Text('Nº'),
            ],
          ),
        ]),
      ),
    );
  }
}
