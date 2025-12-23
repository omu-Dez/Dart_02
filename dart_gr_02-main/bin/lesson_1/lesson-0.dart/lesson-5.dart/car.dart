import 'person.dart';

class Car {
  // Свойства / поля
  String color;
  String model;
  int year;
  Person? owner;

  // Конструктор класса
  // Car(String color, String model, int year) {
  //   this.color = color;
  //   this.model = model;
  //   this.year = year;
  // }

  // Конструктор с инициализирующим списком
  // Car(String color, String model, int year)
  //   : this.color = color,
  //     this.model = model,
  //     this.year = year;

  Car(this.color, this.model, this.year); // сокращённый конструктор

  Car.redNissan(this.year) : color = 'Red', model = 'Nissan';
  Car.withOwner(this.color, this.model, this.year, this.owner);

  // Методы класса
  void drive() {
    print('The $color $model is driving.');
  }

  void displayInfo() {
    print('Car Info: Color: $color, Model: $model, Year: $year');
  }

  void repaint(String newColor) {
    color = newColor;
    print('The car has been repainted to $color.');
  }

  void honk(int numberOfTimes) {
    for (int i = 0; i < numberOfTimes; i++) {
      print('Beep!');
    }
  }
}