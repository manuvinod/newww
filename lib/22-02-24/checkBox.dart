import 'package:flutter/material.dart';

class Checkbx extends StatefulWidget {
  const Checkbx({super.key});

  @override
  State<Checkbx> createState() => _CheckbxState();
}

class _CheckbxState extends State<Checkbx> {
  bool isChecked=false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Center(child: Text("welcomw back",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),),),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "User name",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "password",
                ),
              ),
            ),
            Row(
              children: [
                Checkbox(value: isChecked, onChanged: (value){
                  setState(() {
                
                  });
                  isChecked=value!;
                }),
                Text("Remember me")
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed: (){

              },style: ElevatedButton.styleFrom(primary: Colors.green,minimumSize:Size(500, 50),shape: BeveledRectangleBorder() ),
                  child: Text("sign in",style: TextStyle(color: Colors.white,fontSize: 20),),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("forgot password"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("You dont have an account ?"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Sign up now to get access",style: TextStyle(color: Colors.green.shade900),),
            )
          ],
        ),
      ),
    );
  }
}
