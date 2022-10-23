import 'package:flutter/material.dart';

class AnimatedLearn202 extends StatefulWidget {
  AnimatedLearn202({Key? key}) : super(key: key);

  @override
  State<AnimatedLearn202> createState() => _AnimatedLearn202State();
}

class _AnimatedLearn202State extends State<AnimatedLearn202> with TickerProviderStateMixin {
  bool _isVisible=false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController = AnimationController(vsync: this,duration: _ConstDuration.duration);

  }

  late AnimationController _animationController;


  void _changeVisible(){
    setState(() {
      if (_isVisible==false) {
        _isVisible=true;
      } else {
        _isVisible=false;
      }

      _animationController.animateTo(_isVisible? 1:0);
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
      body: Column(
        children: [
          animatedCrossFade(),
          AnimatedIcon(icon: AnimatedIcons.add_event, progress: _animationController,),
          AnimatedContainer(duration: _ConstDuration.duration,
          height: MediaQuery.of(context).size.width*0.2,
          width: MediaQuery.of(context).size.height*0.2,
          color: _isVisible ? Colors.red:Colors.green,
          margin: EdgeInsets.all(8.0),
          )
        ],
      ),
    );
  }

  AnimatedCrossFade animatedCrossFade() => AnimatedCrossFade(firstChild: Placeholder(), secondChild: _isVisible? Container(): SizedBox(), crossFadeState: CrossFadeState.showFirst, duration:_ConstDuration.duration);
}

class _ConstDuration {

  static const duration =Duration(seconds: 1);

}