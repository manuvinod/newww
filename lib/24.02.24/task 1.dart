import 'package:flutter/material.dart';

class task1 extends StatefulWidget {
  const task1({super.key});

  @override
  State<task1> createState() => _task1State();
}

class _task1State extends State<task1> {
  bool ischecked=true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body:
        Container(decoration:
          BoxDecoration(gradient: LinearGradient(colors:[Colors.yellow,Colors.blue,Colors.purple])),
          child: Column(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage("assets/image/download.png"),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Email ID",
                    prefixIcon: Icon(Icons.mail)
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Password",
                    prefixIcon: Icon(Icons.lock)
                  ),
                ),
              ),
              Row(
                children: [
                  Checkbox(value: ischecked, onChanged: (value){
                    setState(() {
                      ischecked=value!;
                    });
                  }),
                  Row(
                    children: [
                      Text("Remember me"),
                      Padding(
                        padding: const EdgeInsets.only(left: 250),
                        child: Text("fogot password ?"),
                      )
                    ],
                  ),

                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: ElevatedButton(onPressed: (){
                },style: ElevatedButton.styleFrom(primary: Colors.blue,minimumSize: Size(400, 50)),
                    child: Text('Login',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.normal),)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
