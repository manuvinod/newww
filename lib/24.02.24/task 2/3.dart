import 'package:flutter/material.dart';

class thirdog extends StatefulWidget {
  const thirdog({super.key});

  @override
  State<thirdog> createState() => _thirdogState();
}

class _thirdogState extends State<thirdog> {
  bool isChecked=true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: (){},icon: Icon(Icons.arrow_back_ios_new),
          iconSize: 20,
            color: Colors.purple,),
          title: Padding(
            padding: const EdgeInsets.only(right: 60),
            child: Center(child: Text("LOG IN",style: TextStyle(color: Colors.purple,fontWeight: FontWeight.bold,fontSize: 20),)),
          ),
        ),
        body: Column(
          children: [
            Center(child: Text("Learning App",style: TextStyle(color: Colors.purple,fontSize: 40,fontWeight: FontWeight.bold),)),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Text("Enter your log in details to access your account",textAlign: TextAlign.center,style: TextStyle(
                color: Colors.purple,fontSize: 25,fontWeight: FontWeight.bold
              ),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 120),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(onPressed: (){
                    },style: ElevatedButton.styleFrom(primary: Colors.blue.shade900,shape: BeveledRectangleBorder(),
                    elevation: 15),
                        child: Text("Facebook+",style: TextStyle(color: Colors.white),)),
                  ),
                  ElevatedButton(onPressed: (){
                  },style: ElevatedButton.styleFrom(primary: Colors.deepOrange,shape: BeveledRectangleBorder(),
                  elevation: 15),
                      child: Text("G+ Google",style:TextStyle(color: Colors.white) ,))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Email",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.horizontal()
                  )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.horizontal()
                  )
                ),
              ),
            ),
            Row(
              children: [
                Checkbox(value: isChecked, onChanged: (value){
                  setState(() {
                    isChecked=value!;
                  });

                }),
                Text("Remember me"),
                Padding(
                  padding: const EdgeInsets.only(left: 240),
                  child: Text("fogot password?",style: TextStyle(color: Colors.redAccent,fontSize: 15,),),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed: (){
              },style: ElevatedButton.styleFrom(primary: Colors.purple,minimumSize: Size(400, 50),elevation: 20),
                  child: Text("Log in with your account",style: TextStyle(color: Colors.white),)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Center(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 120),
                      child: Text("Dont have an account?"),
                    ),
                    Text("Creat account",style: TextStyle(color: Colors.blue),),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
