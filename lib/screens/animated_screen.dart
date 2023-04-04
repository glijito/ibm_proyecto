import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
  const AnimatedScreen({super.key});

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {

  double _width = 50.0 as double;
  double _height = 50.0 as double;
  Color _color= Colors.indigoAccent;
  BorderRadiusGeometry _borderRadiusGeometry = BorderRadius.circular(10);
  int _counter=0;

  void onChangeShape(){
    final random = Random();

    _width = random.nextInt(300).toDouble()+70;
    _height = random.nextInt(300).toDouble()+70;
    _color = Color.fromRGBO(
        random.nextInt(255),
        random.nextInt(255),
        random.nextInt(255), 1);
    _borderRadiusGeometry = BorderRadius.circular(random.nextInt(100).toDouble()+10);

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Animated Container'),
      ),
      body: Center(
        child: AnimatedContainer(
          width: _width,
          height: _height,
          curve: Curves.easeInCubic,
          decoration: BoxDecoration(
            color: _color,
            borderRadius:  _borderRadiusGeometry
          ), duration:const Duration(milliseconds: 200),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: onChangeShape,
        child: const Icon(Icons.play_arrow),
      ),
    );
  }
}
