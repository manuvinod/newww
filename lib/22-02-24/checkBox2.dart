import 'package:flutter/material.dart';

class CheckBx2 extends StatefulWidget {
  const CheckBx2({super.key});

  @override
  State<CheckBx2> createState() => _CheckBx2State();
}

class _CheckBx2State extends State<CheckBx2> {
  bool isChecked=false;
  bool isA2=false;
  bool isA3=false;
  bool isA4=false;
  bool isA5=false;
  bool isA6=false;
  bool isA7=false;
  String selected="";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,

          title: Text("Grouped Button Example",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
        ),
        body: Column(
          children: [
            Text("Basic CheckedboxGroup",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25),),
            Row(
              children: [
                Checkbox(value: isChecked, onChanged: (value){
                  setState(() {
                    
                  });
                  isChecked=value!;
                }),
                Text("sunday")
              ],
            ),
            Row(
              children: [
                Checkbox(value: isA2, onChanged: (value){
                  setState(() {
                  });
                  isA2=value!;
                }),
                Text("monday")
              ],
            ),
            Row(
              children: [
                Checkbox(value: isA3, onChanged: (value){
                  setState(() {

                  });
                  isA3=value!;
                }),
                Text("tusday")
              ],
            ),
            Row(
              children: [
                Checkbox(value: isA4, onChanged: (value){
                  setState(() {

                  });
                  isA4=value!;
                }),
                Text("Wenesday")
              ],
            ),
            Row(
              children: [
                Checkbox(value: isA5, onChanged: (value){
                  setState(() {

                  });
                  isA5=value!;
                }),
                Text("thersday")
              ],
            ),
            Row(
              children: [
                Checkbox(value: isA6, onChanged: (value){
                  setState(() {

                  });
                  isA6=value!;
                }),
                Text("friday")
              ],
            ),
            Row(
              children: [
                Checkbox(value: isA7, onChanged: (value){
                  setState(() {

                  });
                  isA7=value!;
                }),
                Text("saturday")
              ],
            ),
            Text("Basic Radio Button",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),
            RadioListTile(value: "option 1", groupValue: selected, onChanged: (value){
              setState(() {
                selected=value.toString();
              });
                  }),
            RadioListTile(value: "option 2", groupValue: selected,
                onChanged: (value){
              setState(() {
                selected=value.toString();
              });
            })
          ],
        ),
      ),
    );
  }
}
