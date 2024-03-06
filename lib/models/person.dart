import 'dart:math';

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
