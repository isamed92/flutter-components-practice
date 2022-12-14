import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  final options = const [
    'Megaman',
    'Metal gear',
    'Super smash',
    'Final Fantasy'
  ];
  const ListView1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('List view tipo 1'),
        ),
        body: ListView(
          children: [
            ...options
                .map((game) => ListTile(
                      title: Text(game),
                      trailing: Icon(Icons.arrow_forward_ios_outlined),
                    ))
                .toList(),
            Divider()

            // ListTile(
            //   leading: Icon(Icons.add_circle_outlined),
            //   title: Text('hola mundo'),
            // )
          ],
        ));
  }
}
