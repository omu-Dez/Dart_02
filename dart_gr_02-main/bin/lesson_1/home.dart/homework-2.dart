import 'dart:async';
import 'dart:io';

void main() {
  
  //1


print('Enter your age:');
int age = int.parse(stdin.readLineSync()!);
print('Enter your temperature:');
int temperature = int.parse(stdin.readLineSync()!);
  // print(a > b); // Больше
 // print(a < b); // Меньше
if (temperature >= -25 && temperature <= 30 || age <= 20 && age >= 45){
print('You can go for a walk.');
} else if (age < 20 || temperature <= 0 && temperature >= 28){
print('You can run');
} else if (age > 45 || temperature >= -10 && temperature >= 25){
print('You can breathe');
} else {
  print('Stay home.');
}

//2
print('Enter day of week:');
  String AdayOfWeek = stdin.readLineSync()!;
String dayOfWeek = AdayOfWeek.toLowerCase();
switch (dayOfWeek){
  case 'monday':
  print("It's the start of the week!");
  break;
    case 'tuesday''':
  print("Keep going, almost weekend!");
  break;
    case 'friday ':
  print("Weekend is coming!");
  break;
  case 'saturday  ':
  print("Enjoy your weekend!");
  break;
  case 'sunday  ':
  print("Enjoy your weekend!");
  break;
  default:
      print('Invalid day.');
}

//3

print('Enter password:');
  String password = stdin.readLineSync()!;
  if(password.isEmpty){
    print('Please enter your password');
  } else if(password.length < 6) {
    print(' Password too short.');
  } else if (password == 'omurbek' ){
    print('Access granted.');
  } else {
    print('Wrong password.');
  }
}