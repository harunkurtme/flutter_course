import 'package:flutter/material.dart';
import 'package:flutter_course/101/custom_component.dart';
import 'package:flutter_course/101/list_tile_item.dart';
import 'package:flutter_course/101/stateful_widget.dart';

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
        listTileTheme: ListTileThemeData(
          selectedColor: Colors.black,
          contentPadding: EdgeInsets.all(8.0)
        )
      ),
      home: StatefulLearn(),
    );
  }
}
