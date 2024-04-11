import 'package:flutter/material.dart';

class switching extends StatefulWidget {
  const switching({super.key});

  @override
  State<switching> createState() => _switchingState();
}

class _switchingState extends State<switching> {
  bool isA1=false;
  bool isA2=false;
  bool isA3=false;
  bool isA4=false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back,color:Colors.white ),
          backgroundColor: Colors.purple,
          title: Text("settings",style: TextStyle(color: Colors.white),),
          actions: <Widget>[
            IconButton(
          icon: Icon(Icons.search,color: Colors.white,),onPressed: (){},),
            IconButton(onPressed: (){}, icon: Icon(Icons.menu,color: Colors.white,)),
          ],
        ),
        body: Column(
          children:[
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Gneral",style: TextStyle(color: Colors.black,fontSize: 18),),
              ),
            ],
          ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text("Wi-Fi",style: TextStyle(fontSize: 25),)
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 365),
                  child: Switch(value: isA1, onChanged: (value){
                    setState(() {
                    });
                    isA1=value;
                  }),
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("bluetooth",style: TextStyle(fontSize:25),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 305),
                  child: Switch(value: isA2, onChanged: (value){
                    setState(() {

                    });
                    isA2=value;
                  }),
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text("Do not disturb",style: TextStyle(fontSize: 25),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 260),
                  child: Switch(value: isA3, onChanged: (value){
                    setState(() {

                    });
                    isA3=value;
                  }),
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Airplane mode",style: TextStyle(fontSize: 25),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 250),
                  child: Switch(value: isA4, onChanged: (value){
                    setState(() {

                    });
                    isA4=value;
                  }),
                )
              ],
            )

        ]
        )
      ),
    );
  }
}

