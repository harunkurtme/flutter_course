import 'dart:ui';

import 'package:flutter/material.dart';

class ListViewLearn extends StatefulWidget {
  ListViewLearn({Key? key}) : super(key: key);

  @override
  State<ListViewLearn> createState() => _ListViewLearnState();
}

class _ListViewLearnState extends State<ListViewLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Text("Merhaba",
          style: Theme.of(context).textTheme.headline1,),
          Container(
            height: 300,
            color: Colors.green,
          ),
          SizedBox(
            height: 300,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  width: 100,
                  color: Colors.blue,
                ),Container(
                  width: 100,
                  color: Colors.blue,
                ),Container(
                  width: 100,
                  color: Colors.blue,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}