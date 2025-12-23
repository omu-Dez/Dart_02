import 'car.dart';
import 'person.dart';

void main() {
  int number = 10;
  // Создание экземпляра класса Car / объекта
  Car myCar = Car('Red', 'Toyota', 2020);
  print(number);
  print(myCar);
  // Вызов методов объекта
  myCar.displayInfo();
  myCar.drive();

  Car  friendsCar = Car('Blue', 'Honda', 2018);
  friendsCar.displayInfo();
  friendsCar.drive();
  // Изменение свойств объекта
  // friendsCar.color = 'Green';
  friendsCar.repaint('Green');
  friendsCar.displayInfo();

  Car friendsAlisaCar = Car.redNissan(  2021);
  friendsAlisaCar.displayInfo();

  myCar.honk(5);

  Person friend = Person(name: 'Alice', age: 30); 
  // friend.age = -31;
  // friend.setAge(31);
  friend.age = 31;
  friend.introduce();
  // friend._wasBorn(); // Ошибка: метод недоступен из-за приватности

  friendsAlisaCar.owner = friend; // Назначение владельца автомобиля

  Car bestCar = Car.withOwner('Black', 'BMW', 2022, friend);


// Person me = Person(name: 'Bob', age: 25); 
//         a = b
  myCar.owner = Person(name: 'Bob', age: 25);
  print('Car owner: ${myCar.owner!.name}, Age: ${myCar.owner!.age}'); // ! - мы уверены, что owner не null

  print('End of program.');
}