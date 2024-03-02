import 'dart:math';
import 'package:flutter/material.dart';

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

class Person {
  final String _firstName;
  final String _lastName;
  int _age;
  String? _location;
  late String _username;

  Person(this._firstName, this._lastName, this._age); //конструктор
  Person.located(this._firstName, this._lastName, this._age,
      {required String location}) //конструктор з іменованим параметром
      : _location = location;

  String get firstName => _firstName;
  String get lastName => _lastName;

  int get age => _age;
  set age(int age) {
    if (age > 0) {
      _age = age;
    } else {
      throw ArgumentError('Age must be greater than 0!');
    }
  }

  String get username => _username;
  set username(String userCode) =>
      _username = '${userCode}_${Random().nextInt(101)}';

  @override
  String toString() =>
      '$_firstName $_lastName, $_age y.o.${_location != null ? ', $_location' : ''}';
}
