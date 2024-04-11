import 'package:flutter/material.dart';

class spotify1 extends StatelessWidget {
  const spotify1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          alignment: Alignment.center,
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/image/spotify 2.jpg"),
                fit: BoxFit.cover,colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.7), BlendMode.colorBurn)),
          ),
          child: Column(children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 200),
                child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSeN4kqyO9KRlVgsWZ_zULgyThGlu84bMN8OjEXkbCwc8FcQoRF_6AHLaMW6F0exM7hFb4&usqp=CAU",width: 500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: ElevatedButton(onPressed: (){
              }, style: ElevatedButton.styleFrom(primary: Colors.green,minimumSize: Size(200, 50)),
                  child:Text("sign Up",style: TextStyle(color: Colors.white),) ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(primary: Colors.white,minimumSize: Size(200, 50)),
                  child: Text("Log In",style: TextStyle(color: Colors.black))),
            ),
          ],),
        ),
      ),
    );
  }
}
