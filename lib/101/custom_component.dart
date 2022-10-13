import 'package:flutter/material.dart';


class Custom_Component extends StatelessWidget with _ColorUtility {
  Custom_Component({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(primary: white,shape:StadiumBorder() ),
          onPressed: (){}, 
          child: Text(
            "Food",
            style: Theme.of(context).textTheme.headline5?.copyWith(color: redColor),))),
    );
  } 
}

class _ColorUtility{
  final Color redColor=Colors.red;
  final Color white =Colors.white;
}