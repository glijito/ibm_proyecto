import 'package:flutter/material.dart';


class Listview1Screen extends StatelessWidget {
  const Listview1Screen({super.key});

  final options = const['Megaman','Metal gear','Super smash','Final fantasy'];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Listview tipo 1"),
      ),
      body: ListView(
        children: [
          ...options.map((e) => ListTile(
            leading: const Icon(Icons.ac_unit),
            title: Text(e),
            trailing: const Icon(Icons.arrow_forward_ios_outlined),
          )).toList(),
        ],
      ),
    );
  }
}


