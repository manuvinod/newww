import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_assignment_1/07.03.24/Calculator/claculator2.dart';

void main()=> runApp(CalculatorApp());
class CalculatorApp extends StatelessWidget {
  const CalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.cyan
      ),
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
        backgroundColor: Colors.cyan,
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(child:
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                alignment: Alignment.bottomRight,
                child: Text(text,style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),),
              ),
            ),
            ),
            Row(
              children: [
                customOutlinedButton("7"),
                customOutlinedButton("8"),
                customOutlinedButton("9"),
                customOutlinedButton("+"),
              ],
            ),
            Row(
              children: [
                customOutlinedButton("4"),
                customOutlinedButton("5"),
                customOutlinedButton("6"),
                customOutlinedButton("-"),
              ],
            ),
            Row(
              children: [
                customOutlinedButton("1"),
                customOutlinedButton("2"),
                customOutlinedButton("3"),
                customOutlinedButton("x"),
              ],
            ),
            Row(
              children: [
                customOutlinedButton("C"),
                customOutlinedButton("0"),
                customOutlinedButton("="),
                customOutlinedButton("/"),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget customOutlinedButton(String value) {
    return Expanded(
      child: OutlinedButton(onPressed: ()=>click(value),
          style: OutlinedButton.styleFrom(primary: Colors.indigo,shape: BeveledRectangleBorder(),minimumSize: Size(110, 80)),
          child: Text(value,style: TextStyle(fontSize: 30),)),
    );
  }
  int first=0;
  int second=0;
  String res="";
  String text="";
  String opp="";
  void click(String butnvalue){
    if (butnvalue=="C"){
      res="";
      text="";
      first=0;
      second=0;
    }
    else if(butnvalue=="+"|| butnvalue=="-"|| butnvalue=="x"|| butnvalue=="/"){
      first=int.parse(text);
      res="";
      opp=butnvalue;
      print(first.toString());
      print(opp);
    }
    else if(butnvalue=="="){
      second=int.parse(text);
      print(second.toString());
      if(opp=="+"){
        res=(first+second).toString();
      }
      if(opp=="-"){
        res=(first-second).toString();
      }
      if(opp=="x"){
        res=(first*second).toString();
      }
      if(opp=="/"){
        res=(first/second).toString();
      }
    }
    else{
      res=text+butnvalue;
    }
    setState(() {
      text=res;
    });
  }
}


