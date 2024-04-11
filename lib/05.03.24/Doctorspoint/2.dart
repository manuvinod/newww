import 'package:flutter/material.dart';

import '3.dart';

class page2 extends StatelessWidget {
  const page2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30,right:230),
              child: Text("Create Accound",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Row(
                children: [
                  Text("if you already have an accound ?"),
                  TextButton(onPressed: (){
                    showDialog(context: context, builder: (BuildContext context){
                      return AlertDialog(
                        title: Text("Conformation!"),
                        content: Text("are you sure to continue?"),
                        actions: [
                          TextButton(onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Page3(),));
                          }, child: Text("Yes")),
                          TextButton(onPressed: (){
                            Navigator.of(context).pop();
                          }, child: Text("No"))
                        ],
                      );
                    });
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Page3(),));
                  }, child: Text("Sign in"))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Enter your Email ID",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.horizontal()
                  )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "enter your phone Number",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.horizontal()
                  )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Enter your Name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.horizontal()
                  )
                )
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Enter your password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.horizontal()
                  )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Conform your password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.horizontal()
                  )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: ElevatedButton(onPressed: (){
              },style: ElevatedButton.styleFrom(primary: Colors.indigo,minimumSize: Size(400, 50),shape: BeveledRectangleBorder()),
                  child: Text("Sign Up",style: TextStyle(color: Colors.white),)),
            )
          ],
        ),
      ),
    );
  }
}
