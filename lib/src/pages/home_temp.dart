import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final List<String> opciones = ["uno", "dos", "tres", "cuatro", "cinco"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("COmponentes Temo"),
      ),
      body: ListView(
        children: _crearItemsCorta(),
      ),
    );
  }

  List<Widget> _crearItem() {
    List<Widget> lista = [];

    for (var opt in opciones) {
      final tempWidget = ListTile(
        trailing: Icon(Icons.keyboard_arrow_right_rounded),
        title: Text(opt),
        leading: Icon(Icons.person_outline),
        onTap: () {},
      );
      lista..add(tempWidget)..add(Divider());
    }

    return lista;
  }

  List<Widget> _crearItemsCorta() {
    return opciones.map((opt) {
      return Column(
        children: [
          ListTile(
            trailing: Icon(Icons.keyboard_arrow_right_rounded),
            title: Text(opt),
            leading: Icon(Icons.person_outline),
            onTap: () {},
          ),
          Divider()
        ],
      );
    }).toList();
  }
}
