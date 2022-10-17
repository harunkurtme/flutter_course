import 'package:flutter/material.dart';


class StatefulLifeCycle extends StatefulWidget {
  StatefulLifeCycle({Key? key,  this.title="LifeCycle"}) : super(key: key);

  final String title;

  @override
  State<StatefulLifeCycle> createState() => _StatefulLifeCycleState();
}

class _StatefulLifeCycleState extends State<StatefulLifeCycle> {

  String _message="" ;
  late bool _isOdd ;

  //değişmeler olduğunda sayfa içinde kullanılır
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  //sayfadan çıkışta kullanılır
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  // sayfaya tekrar giriş yapılıp eski verileri değiştirmek için kullanılır
  @override
  void didUpdateWidget(covariant StatefulLifeCycle oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }

  //sayfaya girişte kullanılır
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  _isOdd= this.widget.title.length.isOdd;
  _message=widget.title;

  newMethod();

  }

  void newMethod() {
    if (_isOdd) {
     _message +="cift";
    } else {
      
      _message +="tek";
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_message),),
      body: Center(
        child: widget.title.length.isOdd ? ElevatedButton(onPressed: (){}, child: Text(_message)) : TextButton(onPressed: (){}, child: Text(_message)),
        ),
      
    );
  }
}