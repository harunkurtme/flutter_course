import 'package:flutter/material.dart';



class ColorDemos extends StatefulWidget {
  ColorDemos({Key? key}) : super(key: key);

  @override
  State<ColorDemos> createState() => _ColorDemosState();
}

class _ColorDemosState extends State<ColorDemos> {
  @override
  Widget build(BuildContext context) {

    Color? background;
    void backgroundUpdate(Color colorbackgorund){
      setState(() {
        
      });
    }

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (val){
          if (val==_SelectionITem.red.index) {
            
          } else if(val ==_SelectionITem.green.index) {
          }
        },
        backgroundColor: background,
        items: [
        BottomNavigationBarItem(icon: _ContainerColor(
          color: Colors.red,
        ),
        label: "Red"
        ),BottomNavigationBarItem(icon: _ContainerColor(
          color: Colors.blue,
        ),
        label: "Blue"
        ),BottomNavigationBarItem(icon: _ContainerColor(
          color: Colors.green,
        ),
        label: "Green"
        ),
      ],),
    );
  }
}

enum _SelectionITem{
  red,blue,green
}

class _ContainerColor extends StatelessWidget {
  const _ContainerColor({Key? key, required this.color}) : super(key: key);

  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
    );
  }
}