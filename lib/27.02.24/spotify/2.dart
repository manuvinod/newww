import 'package:flutter/material.dart';

class sportify2 extends StatelessWidget {
  const sportify2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/image/spotify 2.jpg"),fit: BoxFit.cover,colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.4), BlendMode.colorBurn))
        ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 450,top: 30),
                child: Icon(Icons.arrow_back_ios,color: Colors.grey),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Container(
                  height: 550,
                  width: 430,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(30),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset("image/Spotify.jpeg",height: 40,width: 40,),
                        ),
                        Text("Create your accound",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold,letterSpacing: 2),),
                        TextField(
                          decoration: InputDecoration(
                            labelText: "Email ID"
                          ),
                        ),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: "Password",
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(40),
                          child: ElevatedButton(onPressed: (){
                          },style: ElevatedButton.styleFrom(primary: Colors.green.shade500,minimumSize: Size(300, 60)),
                              child: Text("sign in",style: TextStyle(color: Colors.white),)),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Row(
                            children: [
                              Expanded(child: Divider()),
                              Text("OR"),
                              Expanded(child: Divider()),
                            ],
                          ),
                        ),
                        Image.network("https://t4.ftcdn.net/jpg/02/85/23/07/360_F_285230777_daOgOGXmoyi2bMNj7EDt2YSWFz6bwx0Q.jpg",width: 130)

                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
      ),),
    );
  }
}
