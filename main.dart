
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Button Animation Example')),
        body: ButtonAnimationDemo(),
      ),
    );
  }
}

class ButtonAnimationDemo extends StatefulWidget {
  @override
  _ButtonAnimationDemoState createState() => _ButtonAnimationDemoState();
}

class _ButtonAnimationDemoState extends State<ButtonAnimationDemo> {
  bool _selected = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          setState(() {
            _selected = !_selected;
          });
        },
        child: AnimatedContainer(
          width: _selected ? 200.0 : 100.0,
          height: _selected ? 100.0 : 200.0,
          color: _selected ? Colors.blue : Colors.red,
          alignment: _selected ? Alignment.center : AlignmentDirectional.topCenter,
          duration: Duration(seconds: 2),
          curve: Curves.fastOutSlowIn,
          child: FlutterLogo(size: 75),
        ),
      ),
    );
  }
}