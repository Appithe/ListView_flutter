import 'package:flutter/material.dart';

class HomePageAlternativo extends StatelessWidget {
  final opciones = [
    {
      "title": "Leo",
      "description": "4779075678",
      "icon": Icons.ad_units_sharp,
      "Color": Colors.black
    },
    {
      "title": "Karen",
      "description": "4778538444",
      "icon": Icons.account_circle,
      "Color": Colors.green
    },
    {
      "title": "Karen",
      "description": "4778538444",
      "icon": Icons.account_circle,
      "Color": Colors.white
    },
    {
      "title": "Joel",
      "description": "4779034378",
      "icon": Icons.add_alarm_rounded,
      "Color": Colors.grey
    },
    {
      "title": "ISSC",
      "description": "Ingenieria en software",
      "icon": Icons.account_circle,
      "Color": Colors.green
    },
    {
      "title": "611",
      "description": "Grupo",
      "icon": Icons.add_location_alt_outlined,
      "Color": Colors.green
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Práctica'),
      ),
      body: ListView(children: _crearItemsCorto()),
    );
  }

  List<Widget> _crearItemsCorto() {
    return opciones.map((item) {
      return Column(
        children: [
          ListTile(
            title: Text((item['title'])),
            subtitle: Text(
              item['description'],
              style: TextStyle(fontFamily: 'Redressed'),
            ),
            leading: Icon(item['icon'], color: item['color']),
            trailing: Icon(Icons.add_moderator, color: Colors.blue),
          ),
          Divider()
        ],
      );
    }).toList();
  }
}
