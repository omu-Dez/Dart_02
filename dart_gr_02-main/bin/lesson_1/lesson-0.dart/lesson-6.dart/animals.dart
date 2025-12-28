enum Color{brown, black, white, gray}

class Animal {
  int _age;
  String name;
  Color _color;

  static int _animalsCount = 0;

  static void showAnimalsCount(){
    print('Factory ANIMAL produced: ${_animalsCount}');
  }


  Animal(this.name, this._age, this._color) {
    _animalsCount++;
  }

  int get age => _age;

  set age(int newAge) {
    if (newAge >= 0) {
      _age = newAge;
    } else {
      print('Error: Age cannot be negative.');
    }
  }

  Color get color => _color;

  String describe() {
    return 'This is a ${color.name} animal named $name who is $age years old.';
  }
}

class Dog extends Animal {
  final String _breed;

  Dog(super.name, super._age, super.color, this._breed);

  String get breed => _breed;

  void bark() {
    print('Woof! Woof!');
  }

  // Переопределение / Перезапись метода
  @override
  String describe() {
    return 'This is a ${color.name} $_breed dog named $name who is $age years old.';
  }
}

class Cat extends Animal {
  Cat(String name, int age, Color color) : super(name, age, color);
}

class FightingDog extends Dog {
  int wins;
  FightingDog(String name, int age, Color color, String breed, this.wins)
    : super(name, age, color, breed);

  void attack() {
    print('$name the $_breed is attacking!');
  }

  // Переопределение / Перезапись метода
  @override
  String describe() {
    // return super.describe() + ' It won $wins times in fights.';
    return '${super.describe()} It won $wins times in fights.';
  }
}