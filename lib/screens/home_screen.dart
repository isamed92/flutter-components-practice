import 'package:components/screens/screens.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Componentes de flutter'),
          elevation: 0,
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  leading: const Icon(Icons.ac_unit),
                  title: const Text('Nombre de ruta'),
                  onTap: (() {
                    // final route = MaterialPageRoute(
                    //     builder: (context) => const ListView1Screen());
                    // Navigator.pushReplacement(context, route);
                    Navigator.pushNamed(context, 'card');
                  }),
                ),
            separatorBuilder: (context, index) => Divider(),
            itemCount: 10));
  }
}
