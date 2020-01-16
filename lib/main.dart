import 'package:flutter/material.dart';

void main() => runApp(AppCounter());
class AppCounter extends StatefulWidget {
  @override
  _AppCounterState createState() => _AppCounterState();
}

class _AppCounterState extends State<AppCounter> {
  int _counter = 0;
  Color _color;
  void increment(){
    setState((){
      _counter++;
      switch(_counter){
        case 0:
          _color = Colors.green;
          break;
        case 5:
          _color = Colors.black;
          break;
        case 10:
          _color = Colors.cyan;
          break;
        case 15:
          _color = Colors.blue;
          break;
        case 20:
          _color = Colors.pink;
          break;
        case 25:
          _color = Colors.purple;
          break;
      }
    });
  }
  void decrement(){
    setState((){
      _counter--;
      switch(_counter){
        case 0:
          _color = Colors.green;
          break;
        case 5:
          _color = Colors.black;
          break;
        case 10:
          _color = Colors.cyan;
          break;
        case 15:
          _color = Colors.blue;
          break;
        case 20:
          _color = Colors.pink;
          break;
        case 25:
          _color = Colors.purple;
          break;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
       backgroundColor: _color,
        appBar: AppBar(
          backgroundColor: _color,
            title: Text("Counter App"),
            centerTitle: true,
            actions: <Widget>[
              FlatButton(
                child: Icon(Icons.person, color: Colors.white,
                ),
                onPressed: ()=> {},
                )
            ],
         ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 50.0), 
              child:RaisedButton(
                    onPressed: () => increment() ,
                    child:
                        Text('Increment++', style: TextStyle(color: Colors.white)
                        ),
           
                        color: Colors.pink,
                  ),
              ),
              Container(
              margin: EdgeInsets.only(top: 50.0), 
              child:RaisedButton(
                    onPressed: () => decrement() ,
                    child:
                        Text('Decrement--', style: TextStyle(color: Colors.white)
                        ),
                        color: Colors.green,
                  ),
              ),
              Container(
                margin: EdgeInsets.only(top: 50.0),
                child: Text("$_counter"),
              )
          ],
        ),

         ),
      
    );
  }
}