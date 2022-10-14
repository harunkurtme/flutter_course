import 'package:flutter/material.dart';
import 'package:flutter_course/101/custom_component.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        progressIndicatorTheme: const ProgressIndicatorThemeData(color: Colors.blue),
        primarySwatch: Colors.blue,
      ),
      home: Custom_Component(),
    );
  }
}
