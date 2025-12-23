void main() {
  // DRY - Don't Repeat Yourself

  print('--- Готовим чай ---');
  print('ЗАВТРАК');
  makeTea();

  print('ОБЕД');
  makeTea();

  print('УЖИН');
  makeTea();

  print('--- Расчет периметров комнат ---');
  calculatePerimeter('Гостиная', 5.0, 4.0);
  calculatePerimeter('Спальня', 4.5, 3.5);
  calculatePerimeter('Кухня', 3, 2.5); // неявное преобразование int в double

  print('--- Расчет площадей комнат ---');
  int livingRoomArea = calculateArea(5, 4);
  print('Площадь гостиной: $livingRoomArea ${getUnit()}².');
  int bedroomArea = calculateArea(4.5, 3.5);
  print('Площадь спальни: $bedroomArea ${getUnit()}².');
  int kitchenArea = calculateArea(3, 2.5);
  print('Площадь кухни: $kitchenArea ${getUnit()}².');
  print(
    'ОБЩАЯ ПЛОЩАДЬ: ${livingRoomArea + bedroomArea + kitchenArea} ${getUnit()}².',
  );

  print('--- Расчет зарплат ---');
  int johnSalary = calculateSalary(base: 3000, bonus: 500);
  print('Зарплата Джона: ${johnSalary}USD.');
  int janeSalary = calculateSalary(base: 3500, penalty: 200);
  print('Зарплата Джейн: ${janeSalary}USD.');
  int bobSalary = calculateSalary(base: 4000, bonus: 300, penalty: 100);
  print('Зарплата Боба: ${bobSalary}USD.');
  int kevinSalary = calculateSalary(bonus: 100, base: 2800);
  print('Зарплата Кевина: ${kevinSalary}USD.');

  print('--- Расчет стоимости доставки ---');
  double cost1 = calculateShipmentCost(5, 'Osh');
  double cost2 = calculateShipmentCost(10, 'Bishkek', isExpress: true);
  double cost3 = calculateShipmentCost(
    2.5,
    'Almaty',
    baseFee: 12.0,
    isExpress: true,
  );
  print('Стоимость доставки посылки 1: ${cost1}USD.');
  print('Стоимость доставки посылки 2: ${cost2}USD.');
  print('Стоимость доставки посылки 3: ${cost3}USD.');

  print('Глобальная переменная: $globalVariable');
}

double calculateShipmentCost(
  double weight,
  String city, {
  bool isExpress = false,
  double baseFee = 10.0,
}) {
  // возвращаемая функция - с позиционными и именованными необязательные параметрами
  // var factor = 0.0;
  // if(isExpress){
  //   factor = 1.5;
  // } else {
  //   factor = 1.0;
  // }
  double factor = isExpress ? 1.5 : 1.0; // тернарный оператор
  double coefficient = city == 'Bishkek' ? 1.0 : 1.3;
  double cost = baseFee * weight * factor * coefficient;
  return cost;
}

int calculateSalary({required int base, int bonus = 0, int penalty = 0}) {
  // возвращаемая функция - с именованными параметрами
  int totalSalary = base + bonus - penalty;
  return totalSalary;
}

String getUnit() {
  // возвращаемая функция - без параметров
  return 'метров';
}

int calculateArea(double length, double width) {
  // возвращаемая функция - с параметрами
  double area = length * width;
  return area.round(); // возвращаем целое число
}

void calculatePerimeter(String roomName, double length, double width) {
  // невозвращаемая функция - с параметрами
  double perimeter = 2 * (length + width);
  print('Периметр комнаты "$roomName" равен $perimeter ${getUnit()}.');
}

void makeTea() {
  // невозвращаемая функция (void) - без параметров
  print('Вскипятить воду');
  print('Засыпать заварку');
  print('Залить кипятком');
  print('Дать настояться 5 минут');
  print('Налить в чашку');
  print('Добавить молоко или сахар по вкусу');
}

// Пример областей видимости переменных
int globalVariable = 5; // Глобальная переменная
void scopeExample(int parameterVariable) {
  // print(localVariable); // Ошибка: переменная не определена в этой области видимости
  int localVariable = 10;
  print('Локальная переменная внутри функции: $localVariable');
  print('Параметр функции: $parameterVariable');

  if (parameterVariable > 5) {
    print('Локальная переменная внутри блока if: $localVariable');
    int blockVariable = 20;
    print('Блочная переменная внутри блока if: $blockVariable');
  }
  // print('Блокочная переменная вне блока if: $blockVariable'); // Ошибка: переменная не определена в этой области видимости
  print('Глобальная переменная: $globalVariable');
}

// Конец