import 'package:flutter/material.dart';

class ImageLearn202 extends StatefulWidget {
  ImageLearn202({Key? key}) : super(key: key);

  @override
  State<ImageLearn202> createState() => _ImageLearn202State();
}

class _ImageLearn202State extends State<ImageLearn202> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

enum ImagePath{
  firstImage
}

extension Images on ImagePath{
  String path(){
    return "aaaa";
  }
}

extension BuildContext202 on BuildContext{

  TextTheme _textTheme(){
    return Theme.of(this).textTheme;
  }
}