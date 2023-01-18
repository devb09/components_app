import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  final options = const [
    'Megaman',
    'Metal Gear',
    'Super Smash',
    'Final Fantasy'
  ];

  const ListView1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Listview tipo 1'),
        ),
        body: ListView(
          children: [
            ...options
                .map((game) => ListTile(
                      title: Text(game),
                      leading: const Icon(Icons.supervised_user_circle),
                      trailing: const Icon(Icons.turn_right),
                    ))
                .toList()
            // ListTile(
            //   title: Text('title'),
            //   leading: Icon(Icons.supervised_user_circle),
            //   trailing: Icon(Icons.turn_right),
            // )
          ],
        ));
  }
}
