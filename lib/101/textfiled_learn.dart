
import 'package:flutter/material.dart';


class TextFliedLearn extends StatefulWidget {
  TextFliedLearn({Key? key}) : super(key: key);

  @override
  State<TextFliedLearn> createState() => _TextFliedLearnState();
}

class _TextFliedLearnState extends State<TextFliedLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextField(
          maxLength: 20,
          buildCounter: (context, {int? currentLength,bool? isFocused, maxLength}) {
            return AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              height: 10,
              width: 10*(currentLength??0).toDouble(),
              color:Colors.green,
            );
            
          },
        ),
      ),
    );
  }
}