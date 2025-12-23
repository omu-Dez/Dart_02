import 'dart:io';
import 'dart:math';

void main() {

  //1
print('-------------------1-----------------------');
  for (int i = 1; i <= 30; i++) {
  if (i % 3 == 0 && i % 5 == 0){
    print('FizzBuzz');
  } else if (i % 3 == 0){
    print('Fizz');
  } else if (i % 5 == 0){
    print('Buzz');
  } else {
    print(i);
  }
  }
print('--------------------2----------------------');

  //2

  List<int> numbers = [3, -2, 0, 7, -5, 10, 1];

for (var omu in numbers){
  if (omu < 1){ //Посчитать, сколько чисел в списке строго больше нуля //Честно я не доканса понел эту часть "строго больше нуля".
    continue;
  }
  print(omu);
}

print('------------------2.1----------------------');

//2.1

List<int> num = [3, -2, 0, 7, -5, 10, 1];
int count = 0;
int sum = 0;
for (int omurbek in num){
  if(omurbek > 0){
  count = count + 1;
  sum = sum + omurbek;
  }
}
  if(count > 0) {
  double average = sum / count;
  print('Positive numbers count: $count');
  print('Average of positive numbers: $average');
    } else {
      print(' No positive numbers.');
    }

    print('-------------------3---------------------');

    // 3

    Map<String, int> fruits = {'Apple': 5, 'Banana': 2, 'Mango': 7, 'Orange': 0};
    fruits.forEach((key, value) {
      if(value > 0){
    print(' Available: $key ($value pcs)');
      }
    });

  }