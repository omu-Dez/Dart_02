import 'package:flutter/material.dart';
import 'ResultPage .dart';
import 'RegistrationApp.dart';
import 'text.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final _formKey = GlobalKey<FormState>();

  final nameController = TextEditingController();
  final surnameController = TextEditingController();
  final phoneController = TextEditingController();
  final emailController = TextEditingController();
  final loginController = TextEditingController();
  final passwordController = TextEditingController();
  final repeatPasswordController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    surnameController.dispose();
    phoneController.dispose();
    emailController.dispose();
    loginController.dispose();
    passwordController.dispose();
    repeatPasswordController.dispose();
    super.dispose();
  }

  void submitForm() {
    if (!_formKey.currentState!.validate()) return;
    showConfirmDialog();
  }

  void showConfirmDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Подтверждение'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Имя: ${nameController.text}'),
            Text('Фамилия: ${surnameController.text}'),
            Text('Телефон: ${phoneController.text}'),
            Text('Email: ${emailController.text}'),
            Text('Логин: ${loginController.text}'),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Отмена'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => ResultPage(
                    name: nameController.text,
                    surname: surnameController.text,
                    phone: phoneController.text,
                    email: emailController.text,
                    login: loginController.text,
                  ),
                ),
              );
            },
            child: const Text('ОК'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Регистрация')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              CustomTextField(
                controller: nameController,
                label: 'Имя',
                validator: (v) =>
                    v == null || v.isEmpty ? 'Введите имя' : null,
              ),
              CustomTextField(
                controller: surnameController,
                label: 'Фамилия',
                validator: (v) =>
                    v == null || v.isEmpty ? 'Введите фамилию' : null,
              ),
              CustomTextField(
                controller: phoneController,
                label: 'Телефон',
                keyboardType: TextInputType.phone,
                validator: (v) =>
                    v == null || v.isEmpty ? 'Введите телефон' : null,
              ),
              CustomTextField(
                controller: emailController,
                label: 'Email',
                keyboardType: TextInputType.emailAddress,
                validator: (v) =>
                    v == null || !v.contains('@') ? 'Неверный email' : null,
              ),
              CustomTextField(
                controller: loginController,
                label: 'Логин',
                validator: (v) =>
                    v == null || v.length < 4 ? 'Минимум 4 символа' : null,
              ),
              CustomTextField(
                controller: passwordController,
                label: 'Пароль',
                obscureText: true,
                validator: (v) =>
                    v == null || v.length < 6 ? 'Минимум 6 символов' : null,
              ),
              CustomTextField(
                controller: repeatPasswordController,
                label: 'Повтор пароля',
                obscureText: true,
                validator: (v) =>
                    v != passwordController.text ? 'Пароли не совпадают' : null,
              ),
              const SizedBox(height: 8),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: submitForm,
                  child: const Text('Зарегистрироваться'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}