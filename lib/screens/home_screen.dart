import 'package:flutter/material.dart';
import 'package:ibm_proyecto/router/app_route.dart';
import 'package:ibm_proyecto/theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Componente de flutter"),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
            leading: Icon(AppRoutes.menuOptions[index].icon, color: AppTheme.primary),
            title: Text(AppRoutes.menuOptions[index].name),
            onTap: (){
              Navigator.pushNamed(context, AppRoutes.menuOptions[index].route);
            },
          ),
          separatorBuilder: (context1,index1) => const Divider(),
          itemCount: AppRoutes.menuOptions.length),
    );
  }
}

