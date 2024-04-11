import 'package:flutter/material.dart';

class Uitask extends StatefulWidget {
  const Uitask({super.key});

  @override
  State<Uitask> createState() => _UitaskState();
}

class _UitaskState extends State<Uitask> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 300),
              child: Text("Log in",style: TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    icon: Icon(Icons.manage_accounts),
                  hintStyle: TextStyle(color: Colors.grey,fontWeight: FontWeight.normal),
                  hintText: "User name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                obscureText: true,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  icon: Icon(Icons.lock),
                  hintStyle: TextStyle(color: Colors.grey,fontWeight: FontWeight.normal),
                  counterText: "show",
                    hintText: "Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30)
                  )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 35),
              child: ElevatedButton(onPressed: (){
              },style: ElevatedButton.styleFrom(primary: Colors.red,minimumSize: Size(450, 50)),
                  child: Text("Login",style: TextStyle(color: Colors.white,fontWeight: FontWeight.normal,fontSize: 20),)),
            ),
            Padding(
              padding:  EdgeInsets.only(top:200),
              child: Text("Or sign with ",style: TextStyle(color: Colors.white),),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Center(child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJRccbPXePhZRJGFBEvrTwuIelYkOmMf24yg&usqp=CAU",width: 100),),
            )
          ],
        ),
      ),
    );
  }
}
