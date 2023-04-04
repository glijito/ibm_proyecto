import 'package:flutter/material.dart';
import 'package:ibm_proyecto/theme/app_theme.dart';
import 'router/app_route.dart';

void main() {
    runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
      return  MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: AppRoutes.initialRoute,
        routes:AppRoutes.getMenuRoutes(),
        onGenerateRoute:AppRoutes.onGenerateRoute,
        theme: AppTheme.lightTheme
      );
    }
}