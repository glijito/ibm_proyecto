import 'package:flutter/material.dart';
import 'package:ibm_proyecto/Widgets/customInputWidget.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Map<String, String> formValues = {
      'first_name': '',
      'last_name': '',
      'email_user': '',
      'password_user': '',
      'role': ''
    };

    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    return Scaffold(
        appBar: AppBar(
          title: Text("Input Text"),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Form(
              key: myFormKey,
              child: Column(
                children: [
                  CustomInputField(
                      labeltText: 'Nombre',
                      hintText: 'Nombre de usuario',
                      keyboardType: TextInputType.text,
                      formValues: formValues,
                      form_propertie: 'first_name'),
                  const SizedBox(height: 30),
                  CustomInputField(
                      labeltText: 'Apellido',
                      hintText: 'Apellido del usuario',
                      keyboardType: TextInputType.text,
                      formValues: formValues,
                      form_propertie: 'last_name'),
                  const SizedBox(height: 30),
                  CustomInputField(
                      labeltText: 'Correo',
                      hintText: 'Correo del usuario',
                      keyboardType: TextInputType.emailAddress,
                      formValues: formValues,
                      form_propertie: 'email_user'),
                  const SizedBox(height: 30),
                  CustomInputField(
                      labeltText: 'Contraseña',
                      hintText: 'Contraseña del usuario',
                      keyboardType: TextInputType.text,
                      isPassword: true,
                      formValues: formValues,
                      form_propertie: 'password_user'),
                  const SizedBox(height: 30),
                  DropdownButtonFormField<String>(
                      value: 'Admin',
                      items: const [
                        DropdownMenuItem(
                          child: Text("admin"),
                          value: 'Admin',
                        ),
                        DropdownMenuItem(
                          child: Text("super user"),
                          value: 'SuperUser',
                        ),
                        DropdownMenuItem(
                          child: Text("developer"),
                          value: 'Developer',
                        ),
                        DropdownMenuItem(
                          child: Text("junior"),
                          value: 'Jr. Developer',
                        )
                      ],
                      onChanged: (value) {
                        formValues['role'] = value ?? 'Admin';
                      }),
                  ElevatedButton(
                    child: const SizedBox(
                      width: double.infinity,
                      height: 20,
                      child: Center(child: Text("Guardar")),
                    ),
                    onPressed: () {
                      if (myFormKey.currentState!.validate()) {
                        formValues.forEach((key, value) {
                          print(value);
                        });
                      }
                    },
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
