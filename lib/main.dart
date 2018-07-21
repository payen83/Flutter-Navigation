import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(
    title: 'Navigation',
    home: FirstScreen(),
  ));
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build (BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('1st Screen'),
      ),body: Center(
        child: RaisedButton(
          child: Text('launch screen'),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondScreen()),
            );
          },
        )
      )
    );
  } 
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build (BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('2nd Screen'),
      ),body: Center(
        child: RaisedButton(
          child: Text('launch back screen'),
          onPressed: (){
            Navigator.pop(context);
          },
        )
      )
    );
  } 
}

