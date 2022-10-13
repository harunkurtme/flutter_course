import 'package:flutter/material.dart';


class Custom_Component extends StatelessWidget{
  Custom_Component({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: CustomFoodButton(title: "Food",)
            ),
    );
  } 
}

class _ColorUtility{
  final Color redColor=Colors.red;
  final Color white =Colors.white;
}

class CustomFoodButton extends StatelessWidget with _ColorUtility{
  CustomFoodButton({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
          style: ElevatedButton.styleFrom(primary: white,shape:StadiumBorder() ),
          onPressed: (){}, 
          child: Text(
            title.toString(),
            style: Theme.of(context).textTheme.subtitle1?.copyWith(color: redColor),
                )
              );
  }
}