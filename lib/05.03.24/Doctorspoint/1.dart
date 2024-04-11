import 'package:flutter/material.dart';

import '2.dart';
import '3.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.indigo.shade800,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 80,top: 250),
              child: Text("DOCTOR'S POINT",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold,letterSpacing: 3)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50,top: 100),
              child: ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) =>page2() ,));
                },style: ElevatedButton.styleFrom(primary: Colors.blue,minimumSize: Size(400, 50),shape: BeveledRectangleBorder()),
                  child: Text("sign Up",style: TextStyle(color: Colors.white),)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50,top: 50),
              child: ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) =>Page3() ,));
              },style: ElevatedButton.styleFrom(primary: Colors.transparent,minimumSize: Size(400, 50),shape: BeveledRectangleBorder()),
                  child: Text("sign IN",style: TextStyle(color: Colors.white),)),
            )
          ],
        ),
      ),
    );
  }
}
