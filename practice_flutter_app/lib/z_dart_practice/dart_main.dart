import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Center(
        child: TextButton(
          onPressed: () {
            mainTest();
          },
          child: const Text("Run Code"),
        ),
      ),
    ),
  );
}

void mainTest() {
  var p1 = Person(name: "Azman");
  print(p1.age);
}

double addNumber(a, b) => a + b;

class Person {
  String? name;
  int? age;

  Person({this.name, this.age});
}

class Test {
  void add1(a, b) {
    // a & b are positional parameters
    print(a + b); // print() is a built-in function that will be explained later
  }

  void add2(var a, {required int b, int c = 5}) {
    // a & b are named parameters (because of the curly braces)
    print(a + b + c);
    print('End');
  }

  void add3(a, [b = 5]) {
    // b is optional, 5 will be used as a default value
    print(a + b);
  }

  int add123({a, b, c = 100}) {
    return a + b + c;
  }
}
