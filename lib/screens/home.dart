import 'package:components_app/screens/card.dart';
import 'package:components_app/screens/screens.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final menu = const ['/listview1', '/card'];

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Componente en Flutter'),
          elevation: 0,
        ),
        body: ListView.separated(
            itemBuilder: (context, index) {
              return ListTile(
                leading: const Icon(Icons.menu_book),
                title: Text(menu[index]),
                onTap: () {
                  //Se puede modificar las transiciones
                  // final route =
                  //     MaterialPageRoute(builder: (context) => const ListView1Screen());
                  // Navigator.push(context, route);
                  // Navigator.pushReplacement(context, route);
                  Navigator.pushNamed(context, menu[index]);
                },
              );
            },
            separatorBuilder: (_, __) => const Divider(),
            itemCount: menu.length));
  }
}
