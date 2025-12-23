import 'dart:io';

void main() {
  // Цикл for
  for (int i = 1; i <= 5; i++) {
    print('Iteration number: $i');
  }

  // Таблица умножения числа 7
  int number = 7;
  print('Multiplication table for $number:');
  for (int i = 1; i <= 10; i++) {
    int result = number * i;
    print('$number x $i = $result');
  }

  // Таблиуа умножения числа 5 в обратном порядке
  number = 5;
  print('Multiplication table for $number in reverse order:');
  for (int i = 10; i >= 1; i--) {
    int result = number * i;
    print('$number x $i = $result');
  }

  // Таблица умножения числа 9 в от обратном порядке только на четные числа
  number = 9;
  print('Multiplication table for $number on even numbers in reverse order:');
  for (int i = 10; i >= 2; i -= 2) {
    // i = i - 2
    int result = number * i;
    print('$number x $i = $result');
  }

  // Цикл while
  int count = 0;
  while (count < 5) {
    print('Count is: $count');
    count++;
    print('Square of count is: ${count * count}');
  }

  var myStr = '#';
  while (myStr.length <= 7) {
    print(myStr);
    myStr += '#'; // myStr = myStr + '#' Добавляем еще один символ '#'
  }

  // Цикл do while
  int doCount = 0;
  do {
    print('Do-While Count is: $doCount');
    doCount++;
  } while (doCount > 5);

  doCount = 0;
  while (doCount > 5) {
    print('Do-While Count is: $doCount');
    doCount++;
  }

  for (int i = 1; i <= 3; i++) {
    print('Outer loop iteration: $i');
    for (int j = 1; j <= 2; j++) {
      print('  Inner loop iteration: $j');
    }
  }

  // Коллекция: Список (List)
  // упорядоченная коллекция элементов, доступ по индексу, может содержать дубликаты, изменяемый размер
  List<String> fruits = ['Apple', 'Banana', 'Cherry'];
  print(fruits);
  print(
    'I love ${fruits[0]} and ${fruits[2]}.',
  ); // доступ к элементам списка по индексу
  fruits[1] = 'Grapes'; // изменение элемента списка по индексу
  print(fruits);

  // fruits[10] = 'Orange'; // Ошибка: индекс вне диапазона
  fruits.add('Orange'); // добавление элемента в конец списка
  print(fruits);
  fruits.addAll(['Mango', 'Pineapple']); // добавление нескольких элементов
  print(fruits);
  fruits.insert(2, 'Pear'); // вставка элемента по индексу
  print(fruits);
  fruits.remove('Apple'); // удаление элемента по значению
  print(fruits);
  fruits.removeAt(3); // удаление элемента по индексу
  print(fruits);
  fruits.removeLast(); // удаление последнего элемента
  print(fruits);
  print('Fruits count: ${fruits.length}'); // количество элементов в списке

  fruits.add('Grapes');
  print(fruits);
  print(
    'Index of Grapes: ${fruits.indexOf('Grapes')}',
  ); // поиск индекса элемента

  // Коллкекция: Словарь (Map)
  // неупорядоченная коллекция пар ключ-значение, доступ по ключу
  Map<String, int> studentAges = {'Alice': 20, 'Bob': 22, 'Charlie': 23};
  print(studentAges);
  print('Alice is ${studentAges['Alice']} years old.'); // доступ по ключу
  studentAges['Bob'] = 23; // изменение значения по ключу
  print(studentAges);
  studentAges['David'] = 21; // добавление новой пары ключ-значение
  print(studentAges);
  studentAges.remove('Charlie'); // удаление пары по ключу
  print(studentAges);
  print(
    'Number of students: ${studentAges.length}',
  ); // количество пар в словаре
  print('Keys: ${studentAges.keys}'); // получение всех ключей
  print('Values: ${studentAges.values}'); // получение всех значений

  // Перебор всех пар ключ-значение
  studentAges.forEach((key, value) {
    print('$key is $value years old.');
  });

  // Коллекция: Множество (Set)
  // неупорядоченная коллекция уникальных элементов, доступ по значению
  Set<String> colors = {'Red', 'Green', 'Blue'};
  print(colors);
  colors.add('Yellow'); // добавление элемента
  print(colors);
  colors.add('Red'); // добавление дубликата (не будет добавлен)
  print(colors);
  colors.remove('Green'); // удаление элемента
  print(colors);
  print('Colors count: ${colors.length}'); // количество элементов в множестве

  // Перебор всех элементов множества
  for (var element in colors) {
    print('Color: $element');
  }
  List<int> numbers = [33, -45, 9, 78, -21, 56];
  for (var num in numbers) {
    if (num < 0) {
      continue; // пропустить отрицательные числа
    }
    if (num > 50) {
      break; // выход из цикла, если число больше 50
    }
    print('Number: $num');
  }

  List<String> robots = [];
  for (int i = 1; i <= 10; i++) {
    robots.add('Robot_00$i');
  }
  print(robots);

// Бесконечный цикл с возможностью выхода по условию
  while(true){
    print('Enter a number (or type "q" to quit):');
    String? input = stdin.readLineSync();
    if (input == 'q') {
      print('Exiting the loop.');
      break;
    }
    print('You entered: $input');
  }
}
