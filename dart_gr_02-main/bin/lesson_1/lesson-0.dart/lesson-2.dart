import 'dart:io';

void main() {
  // Операторы сравнения
  int a = 10;
  int b = 15;
  print(a == b); // Равно
  print(a != b); // Не равно
  print(a > b); // Больше
  print(a < b); // Меньше
  print(a >= b); // Больше или равно
  print(a <= b); // Меньше или равно

  var temperature = -5;
  var isSnowy = true;

  if (temperature < 0) {
    // истина
    String parkName = 'Winter Park';
    print('It\'s beautiful outside. Let\'s go to $parkName.');
  }

  if (temperature > 25) {
    // ложь
    print('It\'s warm outside. Let\'s go swimming.');
  }

  if (isSnowy) {
    // истина
    print('It\'s snowy outside. Let\'s build a snowman.');
  } else {
    print('No snow today. Maybe next time.');
  }

  if (temperature == 15) {
    // ложь
    print('The temperature is exactly 15 degrees.');
  } else {
    // альтернативный блок
    print('The temperature is not 15 degrees.');
  }

  // else {
  //   print('Do something');
  // }

  temperature = 18;
  if (temperature > 25) {
    print('The weather is hot.');
  } else if (temperature > 15) {
    // истина
    print('The weather is warm.');
  } else if (temperature > 5) {
    print('The weather is cool.');
  } else if (temperature > 0) {
    print('The weather is cold.');
  } else {
    print('The weather is freezing.');
  }

  bool isWeekend = false;

  // Булева логика с операторами И и ИЛИ
  if (isSnowy && temperature < 20) {
    // истина и истина
    // логический оператор И (AND)
    print('Stay at home and read a book.');
  }

  if (isWeekend && isSnowy) {
    // ложь и истина
    print('Go skiing!');
  }

  if (isWeekend || isSnowy) {
    // ложь или истина
    // логический оператор ИЛИ (OR)
    print('Go for a walk!');
  }

  if (temperature > 20 || isWeekend) {
    // ложь или ложь
    print('Go to the beach!');
  }

  int numberOfStudents = 10;
  if (temperature > 15 && temperature < 30 ||
      numberOfStudents >= 5 && numberOfStudents < 10 ||
      isWeekend && isSnowy) {
    // true && true || true && false || false && true => 1 * 1 + 1 * 0 + 0 * 1 = 1 + 0 + 0 = 1 (истина)
    print('Conditions are met for outdoor activities.');
  }

  if (temperature > 15 &&
      (temperature < 30 || numberOfStudents >= 5) &&
      (numberOfStudents < 10 || isWeekend) &&
      isSnowy) {
    // true && (true || true) && (false || false) && true => 1 * (1 + 1) * (0 + 0) * 1 = 1 * 1 * 0 * 1 = 0 (ложь)
    print('Any things can happen.');
  }

  isSnowy = false;
  // if (isSnowy) {
  // } else {
  //   print('Go travelling');
  // }

  // ! - логическое отрицание НЕ (NOT)
  if (!isSnowy) {
    // истина
    print('Go travelling');
  }

  if (!(numberOfStudents < 5 && temperature > 20)) {
    print('Stay home');
  }

  isWeekend = true;

  if (isWeekend) {
    // наружный if
    print('Go shopping');
    if (temperature > 20) {
      // вложенный if
      print('Have ice cream');
    } else {
      print('Have hot chocolate');
    }
  }

  String age = '25';
  int ageAsNumber = int.parse(age); // Преобразование строки в целое число
  print(ageAsNumber + 5); // Выводит 30

  // String city = 'New York';
  // print(int.parse(city)); // Ошибка: FormatException

  String? title; // title может быть null
  print(title);

  print('Enter your name:');
  String? nameInput = stdin.readLineSync();
  print('Nice to meet you, $nameInput!');

  print('Enter number 1:');
  int num1Input = int.parse(stdin.readLineSync()!);
  print('Enter number 2:');
  int num2Input = int.parse(stdin.readLineSync()!);

  print('Enter your sign (+, -, *, /):');
  String sign = stdin.readLineSync()!;

  switch (sign) {
    case '+':
      print('Result: ${num1Input + num2Input}');
      break;
    case '-':
      print('Result: ${num1Input - num2Input}');
      break;
    case '*':
      print('Result: ${num1Input * num2Input}');
      break;
    case '/':
      print('Result: ${num1Input / num2Input}');
      break;
    default:
      print('Invalid sign entered.');
  }
}