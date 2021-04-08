import 'package:componentes/src/providers/menu_provider.dart';
import 'package:componentes/src/utils/icono_string_util.dart' as utils;
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Componentes"),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    return FutureBuilder(
      future: menuProvider.caragarData(),
      initialData: [],
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return ListView(
          children: _listaItems(snapshot.data),
        );
      },
    );
  }

  List<Widget> _listaItems(List<dynamic> data) {
    final List<Widget> opciones = [];
    data.forEach((opt) {
      final itemWidget = ListTile(
        leading: utils.getIcon(opt['icon']),
        title: Text(opt['texto']),
        trailing: Icon(
          Icons.keyboard_arrow_right,
          color: Colors.blueAccent,
        ),
        onTap: () {},
      );
      opciones..add(itemWidget)..add(Divider());
    });
    return opciones;
  }
}
