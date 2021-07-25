import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  @override 
  State createState() => new HomePageState();
}

class HomePageState extends State<HomePage>{
  var num1 = 0, num2 = 0, sum = 0;

  final TextEditingController t1 = new TextEditingController(text: "0");
  final TextEditingController t2 = new TextEditingController(text: "0");

  void add(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 + num2;
    });
  }

  void substract(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 - num2;
    });
  }

  void multiply(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 * num2;
    });
  }

  void divide(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = (num1/num2).truncate();
    });
  }

  void clear(){
    setState(() {
      num1 = 0;
      num2 = 0;
      sum = 0;
      t1.text = "0";
      t2.text = "0";
    });
  }

  @override 
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Calculator"),
        centerTitle: true,
      ),
      body: new Container(
        padding: const EdgeInsets.all(40.0),
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              new Text(
                "Output: $sum",
                style: new TextStyle(
                  fontSize: 20.0, fontWeight: FontWeight.bold,
                  color: Colors.purple
                ),
                ),
              new TextField(
                keyboardType: TextInputType.number,
                decoration: new InputDecoration(
                  hintText: "Enter Number 1"
                ),
                controller: t1,
              ),
              new TextField(
                keyboardType: TextInputType.number,
                decoration: new InputDecoration(
                  hintText: "Enter Number 2"
                ),
                controller: t2,
              ),
              new Padding(padding: const EdgeInsets.only(top: 20.0)),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new MaterialButton(
                    child: new Text("+"),
                    onPressed: add,
                    color: Colors.greenAccent,
                  ),
                  new MaterialButton(
                    child: new Text("-"),
                    onPressed: substract,
                    color: Colors.greenAccent,
                  ),
                ],
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new MaterialButton(
                    child: new Text("*"),
                    onPressed: multiply,
                    color: Colors.greenAccent,
                  ),
                  new MaterialButton(
                    child: new Text("/"),
                    onPressed: divide,
                    color: Colors.greenAccent,
                  ),
                ],
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new MaterialButton(
                    child: new Text("Clear"),
                    onPressed: clear,
                    color: Colors.greenAccent,
                  ),
                ],
              )
            ],
          )
        ),
      ),
    );
  }
}