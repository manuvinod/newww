import 'package:flutter/material.dart';

class drawer2 extends StatelessWidget {
  const drawer2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red.shade900,
          title: Text("Drawer2",style: TextStyle(fontSize: 25,
          ),),
        ),
        drawer: Drawer(
          child: ListView(children: [
            Container(height: 200,
              child: DrawerHeader(decoration: BoxDecoration(
                gradient: LinearGradient(colors:[Colors.red.shade600,Colors.black],begin:Alignment.bottomCenter)
              ),child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 200,70),
                    child: CircleAvatar(radius: 28,
                      backgroundImage:AssetImage("assets/image/4570203.png") ,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 170),
                    child: Text("Manu Vinod",style: TextStyle(color: Colors.black),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 130),
                    child: Text("manuvinod80@gmail.com",style: TextStyle(color: Colors.black,fontSize: 10)),
                  ),
                ],
              ),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text("Navigatiion",style: TextStyle(color: Colors.grey),),
            ),
            ListTile(
              title: Text("Home"),
              leading: Icon(Icons.home),
              iconColor: Colors.red.shade500,
              onTap: () {

              },
            ),
            ListTile(
              title: Text("My Account"),
              leading: Icon(Icons.account_circle_rounded),
              iconColor: Colors.red.shade500,
              onTap: () {

              },
            ),
            ListTile(
              title: Text("My Order"),
              leading: Icon(Icons.account_circle_rounded),
              iconColor: Colors.red.shade500,
              onTap: () {

              },
            ),
            Divider(),
            ListTile(
              title: Text("Examples"),
              leading: Icon(Icons.shopping_cart),
              iconColor: Colors.red.shade500,
            ),
            ListTile(
              title: Text('My favorites'),
              leading: Icon(Icons.star),
              iconColor: Colors.red.shade500,
            ),
            Divider(),
            ListTile(
              title: Text('Home'),
              leading: Icon(Icons.home),
              iconColor: Colors.red.shade500,
            ),
            ListTile(
              title: Text("My Account"),
              leading: Icon(Icons.account_circle_rounded),
              iconColor: Colors.red.shade500,
              onTap: () {

              },
            ),
          ListTile(
            title: Text("My Order"),
            leading: Icon(Icons.account_circle_rounded),
            iconColor: Colors.red.shade500,
            onTap: () {

            },
          ),
          ],
          ),
        ),
      ),
    );
  }
}
