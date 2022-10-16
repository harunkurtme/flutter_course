import 'package:flutter/material.dart';

class StatefulLearn extends StatefulWidget {
  StatefulLearn({Key? key}) : super(key: key);

  @override
  State<StatefulLearn> createState() => _StatefulLearnState();
}

class _StatefulLearnState extends State<StatefulLearn> {

  int val=0;
  
  void _updateVal(bool valx){
    if (valx==true) {
      val=val+1;
    } else {
      val=val-1;
    }
  }

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
            child: FloatingActionButton(onPressed:()=> _updateVal(true)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(onPressed: ()=>_updateVal(false)),
          ),
        ],
      ),
    );
  }
}