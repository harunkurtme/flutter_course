import 'package:flutter/material.dart';
class ProductButton extends StatefulWidget {
  ProductButton({Key? key}) : super(key: key);

  @override
  State<ProductButton> createState() => _ProductButtonState();
}

class _ProductButtonState extends State<ProductButton> {
  
  int val=0;

  void updateVal(){
    setState(() {
      ++val;
      
    });
  }

  
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: updateVal, child: Container(
            child: Text(
              "$val"
            ),
        ));
  }
}