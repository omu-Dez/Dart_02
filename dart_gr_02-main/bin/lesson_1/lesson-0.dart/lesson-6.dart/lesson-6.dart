import 'animals.dart';
import 'utilities.dart';

void main() {
  Animal.showAnimalsCount();

  Cat cat = Cat('Whiskers', 3, Color.black);
  print(cat.describe());

  Dog dog = Dog('Buddy', 5, Color.brown, 'Golden Retriever');
  print(dog.describe());

  FightingDog fightingDog = FightingDog('Max', 4, Color.white, 'Bulldog', 10);
  fightingDog.attack();
  print(fightingDog.describe());

  Animal.showAnimalsCount();

  print(Converter.celciusToFahrenheit(20));
  print(Converter.convertKgsToUsd(8745.0, 87.45));

  if (fightingDog.breed == 'Buldog') {
    print('This dog is very dangerous');
  }

  if (fightingDog.color == Color.white) {
    print('This dog is beautifull');
  }
}