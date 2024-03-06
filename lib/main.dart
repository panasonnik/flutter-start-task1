import 'package:flutter/material.dart';
import 'models/person.dart';

void main() {
  Person p = Person("Sofiia", "Hrebeniuk", 19);
  Person p2 = Person.located("Tony", "Stark", 40, location: "Los Angeles");
  p2.username = "antonny";

//деревоподібна структура
  runApp(MaterialApp(
    home: Scaffold(
      //navbar, basic layout
      appBar: AppBar(
        //NavBar
        title: const Text("Task 1"),
        backgroundColor: const Color.fromRGBO(171, 131, 141, 1.0),
        foregroundColor: const Color(0xffffffff),
      ),
      body: Padding(
        padding:
            const EdgeInsets.all(20.0), // відступ 20 пікселів від кожного краю
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('The task is made by ${p.toString()}',
                  style: const TextStyle(
                    fontFamily: 'MadimiOne',
                    fontSize: 26.0,
                  )),
              const SizedBox(height: 50), // відступ між текстовими полями
              Text('For the person: ${p2.toString()} \nthe username is'),
              Text(p2.username,
                  style: const TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  )),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        //child == nest widget inside another widget
        backgroundColor: const Color.fromRGBO(171, 131, 141, 1.0),
        foregroundColor: const Color(0xffffffff),
        onPressed: () {
          debugPrint('Received click');
        },
        label: const Text("Click me"),
      ),
    ),
  ));
}
