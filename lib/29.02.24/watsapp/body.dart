import 'package:flutter/material.dart';

import '1.dart';
import '2.dart';
import '3.dart';

class watsapp extends StatelessWidget {
  const watsapp({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.teal.shade800,
            actions: <Widget>[
              IconButton(onPressed: (){}, icon: Icon(Icons.search,color: Colors.white,)),
              IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt_outlined,color: Colors.white,)),
              PopupMenuButton(itemBuilder: (BuildContext context) => [
                PopupMenuItem(
                  value: "New group",
                    child: Text('New group',style: TextStyle(color: Colors.black),)),
                PopupMenuItem(
                    value: "New boardcast",
                    child: Text("New boradcast",style: TextStyle(color: Colors.black),)),
                PopupMenuItem(
                    value: "Linked device",
                    child: Text("Linked device",style: TextStyle(color: Colors.black),)),
                PopupMenuItem(
                    value: "Starred messages ",
                    child: Text("Starred messages",style: TextStyle(color: Colors.black),)),
                PopupMenuItem(
                    value: "Payment",
                    child: Text("Payment",style: TextStyle(color: Colors.black),)),
                PopupMenuItem(
                    value: "Settins",
                    child: Text("Settiings",style: TextStyle(color: Colors.black),)),
              ],iconColor: Colors.white,)
            ],
            title: Text("WhatsApp",style: TextStyle(color: Colors.white),),
            bottom: TabBar(indicatorColor: Colors.white,
                labelColor: Colors.white,
                tabs: [
              Tab(text: "Chats",),
              Tab(text: "Updates",),
              Tab(text: "Calls",),
            ]),
          ),
          body: TabBarView(children: [
            Page1(),
            Page2(),
            Chats(),
          ],)
        ));
  }
}
