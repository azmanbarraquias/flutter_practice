

import 'package:flutter/material.dart';

import 'gradient_container.dart';

void main(){
  runApp(const Fundamental());
}

class Fundamental extends StatelessWidget {
  const Fundamental({super.key});

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     title: 'flutter test app',
     theme: ThemeData(
       useMaterial3: false,
       colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
     ),
     home: Scaffold(
       appBar: AppBar(
         backgroundColor: const Color.fromARGB(100, 66, 255, 209),
         title: const Text('Title Bar'),
       ),
       body: const GradientContainer(
           [Colors.red, Color.fromARGB(255, 66, 255, 209), Colors.purple]),
       floatingActionButton: FloatingActionButton(
         onPressed: () {},
         tooltip: 'Increment x2',
         child: const Icon(Icons.add),
       ),
     ),
   );
  }

}



