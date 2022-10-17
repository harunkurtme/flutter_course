import 'package:flutter/material.dart';


class StatefulLifeCycle extends StatefulWidget {
  StatefulLifeCycle({Key? key,  this.title="LifeCycle"}) : super(key: key);

  final String title;

  @override
  State<StatefulLifeCycle> createState() => _StatefulLifeCycleState();
}

class _StatefulLifeCycleState extends State<StatefulLifeCycle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title.toString()),),
      body: Center(
        child: widget.title.length.isOdd ? ElevatedButton(onPressed: (){}, child: Text("")) : TextButton(onPressed: (){}, child: Text(""))
        ),
      ),
    );
  }
}