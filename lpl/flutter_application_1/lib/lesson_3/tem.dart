import 'package:flutter/material.dart';

void main() => runApp(TemperatureApp());

class TemperatureApp extends StatefulWidget{
  @override
  TemperatureAppState createState() => TemperatureAppState();

  
}
class TemperatureAppState extends State<TemperatureApp> {
  
  int temperature = 0;
  
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text('Температура'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
        children: [
          Text("Температура", 
          style: TextStyle(fontSize: 24),
          ),
          SizedBox(height: 10),

          Text('$temperature Градус',
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            color: temperature > 0 ? Colors.red : Colors.blue,
          ),
          ),
          SizedBox(height: 20),

          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton(onPressed: (){
              setState(() {
                temperature--;
              });
              }
              , child: Text('Уменшить'),
              ),
            ],
          
          ),
          ElevatedButton(onPressed: (){
              setState(() {
                temperature++;
              });
              }
              , child: Text('УВеличить'),
              ),
          ElevatedButton(onPressed: (){
              setState(() {
                temperature = 0;
              });
              }
              , child: Text('Сброс'),
              ),
        ],
        ),
      ),
    ),

  );
  }
}