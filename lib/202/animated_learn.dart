import 'package:flutter/material.dart';

class AnimatedLearn202 extends StatefulWidget {
  AnimatedLearn202({Key? key}) : super(key: key);

  @override
  State<AnimatedLearn202> createState() => _AnimatedLearn202State();
}

class _AnimatedLearn202State extends State<AnimatedLearn202> {
  bool _isVisible=false;

  void _changeVisible(){
    setState(() {
      if (_isVisible==false) {
        _isVisible=true;
      } else {
        _isVisible=false;
      }
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: animatedCrossFade(),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        _changeVisible();
      }),
      body: animatedCrossFade(),
    );
  }

  AnimatedCrossFade animatedCrossFade() => AnimatedCrossFade(firstChild: Placeholder(), secondChild: _isVisible? Container(): SizedBox(), crossFadeState: CrossFadeState.showFirst, duration:_ConstDuration.duration);
}

class _ConstDuration {

  static const duration =Duration(seconds: 1);

}