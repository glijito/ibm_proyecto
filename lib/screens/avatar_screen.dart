import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Avatars"),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 5),
            child:  const CircleAvatar(
              child: Text("SL"),
              backgroundColor: Colors.indigoAccent,
            ),
          )
        ],
      ),
      body: const Center(
        child: CircleAvatar(
          maxRadius: 140,
          backgroundImage: NetworkImage('https://ichef.bbci.co.uk/news/640/cpsprodpb/11897/production/_106613817_999_al_.jpg'),
        ),
      ),
    );
  }
}