import 'package:flutter/material.dart';


class Listview2Screen extends StatelessWidget {
  const Listview2Screen({super.key});

  final options = const['Megaman','Metal Gear','Super Smash','Final Fantasy'];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Listview tipo 2"),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
            leading: const Icon(Icons.ac_unit,color:Colors.indigo),
            title: Text(options[index]),
            trailing: const Icon(Icons.arrow_forward_ios_outlined,color: Colors.indigo,),
            onTap: (){
              final game  = options[index];
              print(game);
            },
          ),
          separatorBuilder: (context,data) => const Divider(),
          itemCount: options.length
      )
    );
  }
}


