import 'package:flutter/material.dart';

void main() => runApp(CalculateApp());

class CalculateApp extends StatelessWidget {
  @override
  Widget build(Object context) {
  return MaterialApp(
debugShowCheckedModeBanner: false,
  home: CalculateScreen(),
  );
  }

}

class CalculateScreen extends StatefulWidget{
  @override
  CalculateScreenState createState() => CalculateScreenState();
  }

class CalculateScreenState extends State<CalculateScreen> {
  final TextEditingController firstController = TextEditingController();
  final TextEditingController secondController = TextEditingController();

double result = 0;

double get firstValue => double.tryParse(firstController.text) ?? 0;
double get secondValue => double.tryParse(secondController.text) ?? 0;

void resetCalculate(){
  setState(() {
    firstController.clear();
    secondController.clear();
    result = 0;
  });
}
@override
Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: const Color.fromARGB(255, 0, 0, 0),
    appBar: AppBar(
      title: Text('Кулькулятор ;)'),
      centerTitle: true,
      backgroundColor: Colors.deepOrangeAccent,
    ),
    body: Padding(padding: EdgeInsets.all(20),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextField(
          controller:  firstController,
          keyboardType:  TextInputType.number,
          decoration: InputDecoration(
            labelText: 'Первое число',
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(height: 16),
        TextField(
          controller: secondController,
          keyboardType: TextInputType.number,
          decoration:  InputDecoration(
            labelText: 'Второе число',
            border:  OutlineInputBorder(),
          ),
        ),
        SizedBox(height: 24),
        Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          
          ElevatedButton(
            style: ElevatedButton.styleFrom(
            backgroundColor: Colors.deepOrangeAccent,
          ),
            onPressed: (){
            setState(() {
              result = firstValue + secondValue;
            });
          }
          , child: Text('+', style: TextStyle(fontSize: 24,
          color: Colors.black
          ),
          ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
            backgroundColor: Colors.deepOrangeAccent,
          ),
            onPressed: (){
            setState(() {
              result = firstValue - secondValue;
            });
          }
          , child: Text('-', style: TextStyle(fontSize: 24,
          color: Colors.black
          ),
          ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepOrangeAccent
            ),
            onPressed: resetCalculate,
            child: 
            
            Text('Сброс', style: TextStyle(fontSize: 16, 
            color: Colors.black),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
            backgroundColor: Colors.deepOrangeAccent,
          ),
            onPressed: (){
            setState(() {
              result = firstValue * secondValue;
            });
          }
          , child: Text('×', style: TextStyle(fontSize: 24, 
          color: Colors.black
          ),
          ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
            backgroundColor: Colors.deepOrangeAccent,
          ),
            onPressed: (){
            setState(() {
              result = (firstValue ~/ secondValue) as double;//55555555555555555555555555555555555555555555555555555555555555555555555555
            });
          }
          , child: Text('÷', style: TextStyle(fontSize: 24,
          color: Colors.black
          ),
          ),
          ),

        ],
        ),
        SizedBox(height: 30),
        
        Container(
          width: double.infinity,
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
          color: Colors.deepOrangeAccent,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text('Результат: $result',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 28,
          fontWeight: FontWeight.bold
          ),
          ),
        ),
      ],
    ),
    ),
  );
}
}
