import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget{
  String name = 'Jon Snow';
  String bio = 'Game of Thrones';
  String age = '30 years old';
  String city = 'London, UK';
  String interests = '🎬 Acting\n🏋️ Fitness\n🎥 Movies';

@override
  Widget build(BuildContext context) {
return Scaffold(
  backgroundColor: const Color.fromARGB(255, 1, 79, 144),
  appBar: AppBar(
    title: Text("Profile"),
    centerTitle: true,
    backgroundColor: Colors.blueAccent,
    leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
    actions: [
      IconButton(onPressed: () {}, icon: Icon(Icons.search)),
      IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
    ],
  ),
  body:  Center(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircleAvatar(
          radius: 80,
          backgroundImage: AssetImage('images/oioi.jpg'),
        ),
        SizedBox(height: 22),
        Text(
        name,
        style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        fontFamily: 'Poppins',
        color: Colors.black,
        ),
        ),
        SizedBox(height: 5),
            Text(
        age,
        style: TextStyle(
        fontSize: 16,
        fontFamily: 'Poppins',
        color: Colors.black,
        ),
        ),
        SizedBox(height: 5),
        Text(
        city,
        style: TextStyle(
        fontSize: 16,
        fontFamily: 'Poppins',
        color: Colors.black,
        ),
        ),
        SizedBox(height: 5),
        Text(
        bio,
        style: TextStyle(
        fontSize: 16,
        fontFamily: 'Poppins',
        color: Colors.black,
        ),
        ),
        SizedBox(height: 5),
        Text( 
        interests, 
        textAlign: TextAlign.center,
        style: TextStyle( 
        fontSize: 16, 
        fontFamily: 'Poppins', 
        color: Colors.black, ), ),
      ],
    ),
  ),
    );
  }
}
