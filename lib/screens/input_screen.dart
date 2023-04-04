import 'package:flutter/material.dart';
import 'package:ibm_proyecto/Widgets/customInputWidget.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Input Text"),
      ),
      body:  SingleChildScrollView(
        child:  Padding(
          padding:  EdgeInsets.symmetric( horizontal: 20, vertical: 20),
          child: Column(
            children: [
              CustomInputField(labeltText: 'Nombre', hintText: 'Nombre de usuario',keyboardType: TextInputType.text),
              SizedBox(height: 30),
              CustomInputField(labeltText: 'Apellido', hintText: 'Apellido del usuario',keyboardType: TextInputType.text,),
              SizedBox(height: 30),
              CustomInputField(labeltText: 'Correo',hintText: 'Correo del usuario',keyboardType: TextInputType.emailAddress,),
              SizedBox(height: 30),
              CustomInputField(labeltText: 'Contraseña',hintText: 'Contraseña del usuario',keyboardType: TextInputType.text, isPassword: true,),
              SizedBox(height: 30),
            ],
          ),
        ),
      )
    );
  }
}

