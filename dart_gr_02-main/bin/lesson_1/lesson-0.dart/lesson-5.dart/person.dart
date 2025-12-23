class Person {
  final String _name;
  int _age;

  Person({required String name, required int age}) : _name = name, _age = age {
    _wasBorn();
  }

  void _wasBorn() {
    print('Person $_name was born.');
  }

  // String getName() {
  //   return _name;
  // }

  // void setAge(int newAge) {
  //   _age = newAge;
  // }

  set age(int newAge) {
    if (newAge >= 0) {
      _age = newAge;
    } else {
      print('Error: Age cannot be negative.');
    }
  }

  String get name => _name;

  int get age => _age;

  void introduce() {
    print(
      'Hello, my name is $_name and I am $_age years old. I was born in ${calculateBirthYear()}.',
    );
  }

  int calculateBirthYear() {
    return 2025 - _age;
  }
}