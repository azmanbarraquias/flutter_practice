import 'package:flutter/material.dart';

import '../a_fundamental/fundamental_main.dart';
import '../b_advance/advance_main.dart';

var fundamental = const Fundamental();
var advance = const DeepQuiz();

void main() {
  runApp(
    MaterialApp(
      title: 'flutter test app',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
      ),
      home: const MyWidget(),
    ),
  );
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: myAppBarColor(context),
        title: const Text('Title Bar'),
      ),
      body: const Center(
        child: Text("Hello Flutter"),
      ),
    );
  }

  Color myAppBarColor(context) {
    switch (Theme.of(context).platform) {
      case TargetPlatform.windows:
        return Colors.red;
      case TargetPlatform.android:
        return Colors.blue;
      case TargetPlatform.iOS:
        return Colors.green;
      default:
        return Colors.white;
    }
  }
}
