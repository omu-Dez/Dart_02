import 'package:flutter/material.dart' hide Page;
import 'RegistrationApp.dart';
import 'RegistrationPage.dart';
import 'ResultPage .dart';

class RegistState extends State<RegistrationPage>{
  final _formKey = GlobalKey<FormState>();

  final nameController = TextEditingController();
  final surnameController = TextEditingController();
  final phoneController = TextEditingController();
  final emailController = TextEditingController();
  final loginController = TextEditingController();
  final passwordController = TextEditingController();
  final repeatPasswordController = TextEditingController();
  void dispose(){
    nameController.dispose();
    surnameController.dispose();
    phoneController.dispose();
    emailController.dispose();
    loginController.dispose();
    passwordController.dispose();
    repeatPasswordController.dispose();
    super.dispose();
  }
  void submitForm(){
    if(_formKey.currentState!.validate());
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Успешно '))
      );
      Navigator.push(context, MaterialPageRoute(builder: (_)=> ResultPage(
            name: nameController.text,
            surname: surnameController.text,
            phone: phoneController.text,
            email: emailController.text,
            login: loginController.text,
          ),
),);
  }
  
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar:  AppBar(
      title: Text("Регистрация"),
    ),
    body: SingleChildScrollView(
      padding: EdgeInsets.all(16),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            buildTextField(
              controller: nameController, 
              label: "Имя", 
              validator:(value) {
                  if (value == null || value.isEmpty) {
                    return 'Введите имя';
                  }
                  if (!RegExp(r'^[a-zA-Zа-яА-Я]+$').hasMatch(value)) {
                    return 'Только буквы';
                  }
              }
              ),
          ],
        ),
        ),
    ),
  );
  }
  Widget buildTextField({
    required TextEditingController controller,
    required String label,
    String? hint,
    bool obscureText = false,
    TextInputType keyboardType = TextInputType.text,
    required String? Function(String?) validator,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: TextFormField(
        controller: controller,
        obscureText: obscureText,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          labelText: label,
          hintText: hint,
          border: const OutlineInputBorder(),
        ),
        validator: validator,
      ),
    );
  }
}