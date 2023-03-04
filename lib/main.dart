import 'package:flutter/material.dart';
import 'screens/screens.dart';

void main() {
    runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
      return  MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Listview2Screen(),
        routes:{
          'listview1': (BuildContext context ) => const Listview1Screen(),
          'listview2': (BuildContext context ) => const Listview2Screen(),
          'alert_screen': (BuildContext context ) => const AlertScreen(),
          'card_screen': (BuildContext context ) => const CardScreen(),
        }
      );
    }
}