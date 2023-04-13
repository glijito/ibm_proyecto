import 'dart:ffi';

import 'package:flutter/material.dart';


class CustomInputField extends StatelessWidget {

  final String? hintText;
  final String? labeltText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixIcon;
  final TextInputType? keyboardType;
  final bool isPassword;
  final Map<String, String> formValues;
  final String form_propertie;

  const CustomInputField({
    Key? key,
    this.hintText,
    this.helperText,
    this.labeltText,
    this.icon,
    this.suffixIcon,
    this.keyboardType,
    this.isPassword=false,
    required this.formValues,
    required this.form_propertie,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      autofocus: false,
      obscureText: isPassword,
      textCapitalization: TextCapitalization.words,
      keyboardType: keyboardType,
      onChanged: (value)=> formValues[form_propertie]=value,
      validator: (data){
        if (data == null)
          return "este campo es requerido";
        return data.length < 3? "Minimo 3 caracteres": null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration:  InputDecoration(
        hintText: hintText,
        labelText: labeltText,
        helperText: helperText,
        counterText: '3 caracteres',
        suffixIcon: Icon(suffixIcon),
        icon:Icon(icon),
      ),
    );
  }
}