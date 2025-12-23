int totalCalls = 0;

void greet (){
  totalCalls++;
  print(' Hello! Welcome to Dart programming!');
}

void introduce(String name, int age){
  totalCalls++;
  print(' My name is $name and I am $age years old.');
}
int addNumbers(int a, int b){
  totalCalls++;
  return a + b;
}
  double calculateDiscount({
  required double price,
  double discount = 0,
  double tax = 0,
}) {
  totalCalls++;
  double finalPrice = price - (price * discount / 100) + (price * tax / 100);
  return finalPrice;
}
void main(){
  greet();
  greet();
  greet();

  introduce('Omurbek', 19);
  introduce('Atai', 21);
  introduce('Iskander', 15);

  int sum = addNumbers(10, 9);
  print('Sum of 10 and 9 is $sum.');

  double price_1 = calculateDiscount(price: 40);
  print(' Final price: \$$price_1');
  double price_2 = calculateDiscount(price: 40, discount: 5 );
  print(' Final price: \$$price_2');
  double price_3 = calculateDiscount(price: 40, discount: 20, tax: 2);
  print(' Final price: \$$price_3');
}