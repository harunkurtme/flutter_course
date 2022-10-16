import 'package:flutter/material.dart';



class ColorDemos extends StatefulWidget {
  ColorDemos({Key? key}) : super(key: key);

  @override
  State<ColorDemos> createState() => _ColorDemosState();
}

class _ColorDemosState extends State<ColorDemos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Container(
          child: Text("Color RED"),
          color: Colors.red,
        ),
        label: "Red"
        )
      ],),
    );
  }
}