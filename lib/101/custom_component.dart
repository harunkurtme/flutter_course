import 'package:flutter/material.dart';


class Custom_Component extends StatelessWidget{
  Custom_Component({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          CustomFoodButton(title: "Food",onpressed: (){},),
        ],
      ),
    );
  } 
}

class _ColorUtility{
  final Color redColor=Colors.red;
  final Color white =Colors.white;
}

class _PaddingUtility{
  final EdgeInsets normalpadding = EdgeInsets.all(8.0);
  final EdgeInsets normal2xpadding = EdgeInsets.all(8.0);
}

class CustomFoodButton extends StatelessWidget with _ColorUtility{
  CustomFoodButton({Key? key, required this.title, required this.onpressed}) : super(key: key);
  final String title;
  final void Function() onpressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
          style: ElevatedButton.styleFrom(primary: white,shape:StadiumBorder() ),
          onPressed: onpressed, 
          child: Text(
            title.toString(),
            style: Theme.of(context).textTheme.subtitle1?.copyWith(color: redColor),
                )
              );
  }
}