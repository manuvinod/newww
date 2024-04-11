import 'package:flutter/material.dart';

class soical2 extends StatelessWidget {
  const soical2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back_outlined),
        ),
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Create an Account",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 30),),
              ),
              Padding(
                padding: const EdgeInsets.all(25),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "User Name",
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
                    labelText: "Email",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.horizontal(),
                    )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.horizontal(),
                    )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "conform password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.horizontal(),
                    )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(onPressed: (){
                },style: ElevatedButton.styleFrom(primary: Colors.yellow.shade800,minimumSize:Size(200, 50)),
                    child: Text("SIGN UP",style: TextStyle(color: Colors.white),)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 150,top: 30),
                child: Row(
                  children: [
                    Text("Already have an Account?"),
                    Text("Sign in",style: TextStyle(color: Colors.yellow.shade800),)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
