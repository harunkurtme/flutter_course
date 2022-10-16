import 'package:flutter/material.dart';

class StatefulLearn extends StatefulWidget {
  StatefulLearn({Key? key}) : super(key: key);

  @override
  State<StatefulLearn> createState() => _StatefulLearnState();
}

class _StatefulLearnState extends State<StatefulLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(onPressed: null),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(onPressed: null),
          ),
        ],
      ),
    );
  }
}