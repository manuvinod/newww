import 'package:flutter/material.dart';

class Porteltest extends StatefulWidget {
  const Porteltest({super.key});

  @override
  State<Porteltest> createState() => _PorteltestState();
}

class _PorteltestState extends State<Porteltest> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.grey.shade300,
          body: Column(
            children: [
              Center(
                child: Container(
                  width: 450,
                  height: 200,
                  decoration: BoxDecoration(
                    image:DecorationImage(
                      image: AssetImage("image/purple.jpg"),
                    ),),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 250,top: 60),
                    child: Center(child: Column(
                      children: [
                        Text("Paste Text",style: TextStyle(color: Colors.white,fontSize: 27),),
                        Text("input or paste your text",style: TextStyle(fontSize: 10),)
                      ],
                    )),
                  ),

                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  height: 200,
                  width: 450,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("image/purple.jpg"),),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 250,top: 70),
                    child: Column(
                      children: [
                        Text("Import file",style: TextStyle(color: Colors.white,fontSize: 26),),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Text("use text file from storage",style: TextStyle(fontSize: 11),),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 300),
                child: Text("open Recent",style: TextStyle(color: Colors.black87),),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 60,
                      width: 380,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(11),
                          color: Colors.white
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 150),
                        child: Column(children: [
                          Text("General and Surprising",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
                          Padding(
                            padding: const EdgeInsets.only(right: 100),
                            child: Text("10 may 2018",style: TextStyle(color: Colors.grey,fontSize: 15),),
                          ),
                        ],),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 60,
                      width: 380,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 250),
                        child: Column(children: [
                          Text("lif is short",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
                          Text("15 jan 2018",style: TextStyle(color: Colors.grey,fontSize: 15),),
                        ],),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 60,
                      width: 380,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 150),
                        child: Column(children: [
                          Text("How to make pittsburgh",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
                          Padding(
                            padding: const EdgeInsets.only(right: 100),
                            child: Text("27 dec 2017",style: TextStyle(color: Colors.grey,fontSize: 15),),
                          )
                        ],),
                      ),
                    ),
                  )
                ],
              ),
            ],
          )
      ),
    );
  }
}