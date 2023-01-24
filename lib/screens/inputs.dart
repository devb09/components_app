import 'package:components_app/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'Brayan',
      'last_name': 'Valencia',
      'email': 'brayan@gmail.com',
      'password': '12345',
      'role': 'admin'
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs'),
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Form(
          key: myFormKey,
          child: Column(
            children: [
              CustomInputField(
                labelText: 'Nombre',
                hintText: 'Nombre de usuario ',
                keyboardType: TextInputType.text,
                fomrProperty: 'first_name',
                fomrValues: formValues,
              ),
              const SizedBox(
                height: 30.0,
              ),
              CustomInputField(
                labelText: 'Apellido',
                hintText: 'Apellido de usuario ',
                keyboardType: TextInputType.text,
                fomrProperty: 'last_name',
                fomrValues: formValues,
              ),
              const SizedBox(
                height: 30.0,
              ),
              CustomInputField(
                labelText: 'Email',
                hintText: 'Correo de usuario ',
                keyboardType: TextInputType.emailAddress,
                fomrProperty: 'email',
                fomrValues: formValues,
              ),
              const SizedBox(
                height: 30.0,
              ),
              CustomInputField(
                labelText: 'Contraseña',
                hintText: 'contraseña',
                keyboardType: TextInputType.emailAddress,
                obscureText: true,
                fomrProperty: 'password',
                fomrValues: formValues,
              ),
              const SizedBox(
                height: 30.0,
              ),
              DropdownButtonFormField<String>(items: const [
                DropdownMenuItem(
                  value: 'Admin',
                  child: Text('Admin'),
                ),
                DropdownMenuItem(
                  value: 'superUser',
                  child: Text('super User'),
                ), 
                DropdownMenuItem(
                  value: 'developer',
                  child: Text('developer'),
                ),
                DropdownMenuItem(
                  value: 'junior',
                  child: Text('junior'),
                ),
              ], onChanged: (value) => formValues['role'] = value ?? 'Admin'),
              ElevatedButton(
                  onPressed: () {
                    FocusScope.of(context).requestFocus(FocusNode());

                    if (!myFormKey.currentState!.validate()) {
                      print('not valid form');
                      return;
                    }
                    print(formValues);
                  },
                  child: const SizedBox(
                      width: double.infinity,
                      child: Center(child: Text('submit'))))
            ],
          ),
        ),
      )),
    );
  }
}
