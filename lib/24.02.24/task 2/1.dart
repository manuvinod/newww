import 'package:flutter/material.dart';

class firstPagw extends StatefulWidget {
  const firstPagw({super.key});

  @override
  State<firstPagw> createState() => _firstPagwState();
}

class _firstPagwState extends State<firstPagw> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.purple,
     body: Column(
       children: [
         Center(
           child: Padding(
             padding: EdgeInsets.only(top: 260),
             child: Text("Learning App",style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold),),
           ),
         )
       ],
     ),
      ),
    );
  }
}
