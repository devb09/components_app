import 'package:components_app/router/routes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final menu = Routes.menuOptions;

    return Scaffold(
        appBar: AppBar(
          title: const Text('Componente en Flutter'),
          elevation: 0,
        ),
        body: ListView.separated(
            itemBuilder: (context, index) {
              return ListTile(
                leading: Icon(menu[index].icon),
                title: Text(menu[index].name),
                onTap: () {
                  //Se puede modificar las transiciones
                  // final route =
                  //     MaterialPageRoute(builder: (context) => const ListView1Screen());
                  // Navigator.push(context, route);
                  // Navigator.pushReplacement(context, route);
                  
                  // print(menu[index].route);
                  Navigator.pushNamed(context, menu[index].route);
                },
              );
            },
            separatorBuilder: (_, __) => const Divider(),
            itemCount: menu.length));
  }
}
