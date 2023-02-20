import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
        elevation: 5.0,
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
               Text("Clicks Counter"),
               Text("0")
            ],
          ),
      )
    );
  }


}