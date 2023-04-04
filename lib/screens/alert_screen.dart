import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:ibm_proyecto/theme/app_theme.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: ()=> !Platform.isAndroid ?
              displayDialogAndroid(context):
              displayDialogIOS(context),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text('Mostrar Alerta', style: TextStyle(fontSize: 16)),
          )
        )
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppTheme.primary,
        onPressed: () { Navigator.pop(context); },
        child: const Icon(Icons.close),
      ),
    );
  }

  void displayDialogIOS(BuildContext context){
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context){
          return CupertinoAlertDialog(
            title: Text("Informacion "),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text("Este es el contenido de la alerta"),
                SizedBox(height: 10,),
                FlutterLogo(size: 100,)
              ],
            ),
            actions: [
              TextButton(
                  onPressed: ()=> Navigator.pop(context),
                  child: const Text("Cancelar",style: TextStyle(color: Colors.red),)),
              TextButton(
                  onPressed: ()=> Navigator.pop(context),
                  child: const Text("OK"))
            ],
          );
        }
    );
  }

  void displayDialogAndroid(BuildContext context){
    showDialog(
      barrierDismissible: true,
        context: context,
        builder: (context){
          return AlertDialog(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            elevation: 5,
            title: const Text('Titulo'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text("Este es el contenido de la alerta"),
                SizedBox(height: 10,),
                FlutterLogo(size: 100,)
              ],
            ),
            actions: [
              TextButton(
                  onPressed: ()=> Navigator.pop(context),
                  child: const Text("Cancelar",style: TextStyle(color: Colors.red),)),
              TextButton(
                  onPressed: ()=> Navigator.pop(context),
                  child: const Text("OK"))
            ],
          );
      });
  }
}
