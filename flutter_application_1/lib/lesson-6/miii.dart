import 'package:flutter/material.dart';

class Miii {
  final String name;
  final String text;
  final String time;
  final String online;
  final String? callData;
  final Color avatar;

Miii ({
  required this.name,
  required this.text,
  required this.time,
  this.callData,
  required this.online,
  required this.avatar,
});
}

List<Miii> chatList = [
  Miii(
    name: 'Ома', 
    text: 'го Мб', 
    time: '5 мин', 
    callData: 'В сети',
    online: 'недавно', 
    avatar: Colors.amber),
    Miii(
    name: 'Атай', 
    text: 'го ДС', 
    time: '5 мин', 
    callData: null,
    online: '6 дней', 
    avatar: const Color.fromARGB(255, 255, 0, 0)),
    Miii(
    name: 'Артур', 
    text: 'Верни деньги ЭЭЭЭЭЭЭЭЭЭЭЭ', 
    time: '5 мин', 
    callData: 'В сети',
    online: '1 час', 
    avatar: const Color.fromARGB(255, 13, 0, 255)),
    Miii(
    name: 'Мама', 
    text: 'Купи молоко 2 литра', 
    time: '5 мин', 
    callData: 'Не в сети',
    online: 'недавно', 
    avatar: const Color.fromARGB(255, 0, 255, 60)),
    Miii(
    name: 'Жене', 
    text: 'Заберите заказ и китая 8-позиций', 
    time: '5 мин', 
    callData: null,
    online: 'сейчас', 
    avatar: const Color.fromARGB(255, 255, 0, 208)),
    
];