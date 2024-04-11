import 'package:flutter/material.dart';

class Secondpg extends StatefulWidget {
  const Secondpg({super.key});

  @override
  State<Secondpg> createState() => _SecondpgState();
}

class _SecondpgState extends State<Secondpg> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title:IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios_new_sharp),
            iconSize: 30,
            color: Colors.purple,
          ),
        ),
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Image.asset("assets/image/images.jpg"),
              ),
            ),
            Text("Online learning paltform",style: TextStyle(color: Colors.purple,fontSize: 30,fontWeight: FontWeight.w900),),
            Center(
              child:
              Text("we provides an online discusstion platform to collaborates,share and get answer to your qustions ",
              textAlign: TextAlign.center),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed: (){
                },style: ElevatedButton.styleFrom(primary: Colors.purple,onPrimary: Colors.pinkAccent,maximumSize: Size(500, 50),
                elevation: 15,
              ),
                  child: Text("Start learning",style: TextStyle(color: Colors.white),)),
            )
          ],
        ),
      ),
    );
  }
}
