void main() {
  // Вывод текста и чисел в консоль
  print('Hello, World!');
  print(45);
  print(5.45); // Вывод числа с плавающей точкой

  /* Многострочный комментарий
     Можно использовать для пояснений
     или временного отключения кода
  */

  /*
   print('Test 1');
   print('Test 2');
   */

  // Переменные и типы данных

  String myName = 'Jim Beam'; // Строковая переменная
  int myAge = 30; // Целочисленная переменная
  double myHeight = 178.5; // Переменная с плавающей точкой
  bool isTeacher = true; // Логическая переменная
  // int temperature = 'Ten'; // Ошибка: попытка присвоить строку целочисленной переменной
  print(myName);
  print(myAge);
  print(myHeight);
  print(isTeacher);

  // print(mySalary);
  String myJob; // Объявление переменной без инициализации
  int mySalary = 5000;
  print(mySalary);
  myJob = 'Developer'; // Присвоение значения переменной
  mySalary =
      mySalary + 2000; // Увеличение зарплаты на 2000 (перезапись переменной)
  print(mySalary);
  print(myJob);

  String myPetName1 = 'Buddy';
  String myPetName2 = 'Molly';

  // String my pet name = 'Charlie'; // Ошибка: пробелы в имени переменной
  String my_pet_name =
      'Charlie'; // Правильный вариант с подчеркиванием, но не по стилю Dart
  // String 1myPetName = 'Max'; // Ошибка: имя переменной не может начинаться с цифры

  // Конкатенация строк
  print('My name is ' + myName + '. My job is ' + myJob + '.');

  // Интерполяция строк
  print('My name is $myName. I am $myAge years old.');
  print('I was born in ${2025 - myAge}.');
  print('My salary is ${mySalary}USD.');

  // Экранирование символов
  print("Today I'm learning Dart Programming Language.");
  print('"Dart" is fun!');
  print('I\'m learning "Dart".');
  print('My salary is \$$mySalary.');

  // Строковые функции  
  String greeting = '   Hello, Dart!';
  print(greeting.toUpperCase()); // Преобразование в верхний регистр
  print(greeting.toLowerCase()); // Преобразование в нижний регистр
  print(greeting.length); // Длина строки
  print(greeting.trim()); // Удаление пробелов в начале и конце строки
  print(greeting.replaceAll('Dart', 'Flutter')); // Замена подстроки

  // Арифметические операции
  print(1 + 4); // Сложение
  print(10 - 3); // Вычитание
  print(5 * 6); // Умножение
  print(20 / 4); // Деление
  print(20 ~/ 3); // Целочисленное деление
  print(10 % 3); // Остаток от деления

  print(5 + 3 * 4 / 2 - 1); // Приоритет операций
  print((5 + 3) * (4 / (2 - 1))); // Использование скобок для изменения приоритета

  int x = 10;
  x += 5; // Увеличение на 5 (x = x + 5)
  print(x);
  x++; // инкремент (увеличение на 1) (x = x + 1)
  print(x);

  // Особенности типов данных (var, final, const)

  var city = 'New York'; // Тип определяется автоматически
  print(city.toUpperCase());

  var num = 42;
  print(num + 8);

  String countryName = 'United States of America'; // Явное указание типа

  final country = countryName.toUpperCase(); // Значение нельзя изменить после инициализации
  // country = 'Canada'; // Ошибка: попытка изменить значение final переменной
  print(country);

  const myCity = 'Bishkek'; // Константа времени компиляции 

  // var -> значение может изменяться и тип определяется автоматически
  // final -> значение не может изменяться после инициализации, но может быть известно только во время выполнения работы программы
  // const -> значение не может изменяться и должно быть известно на этапе компиляции
  
}