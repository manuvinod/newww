import 'package:flutter/material.dart';

class Chats extends StatelessWidget {
  const Chats({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ListTile(
            leading:CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTiJPJhAk1uxytJAeeJvZrfChncT4txpm1jRA&usqp=CAU"
              )),
            title: Text("creat call link",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
            subtitle: Text("share link for your WhatsApp call"),onTap: () {

            },
            ) ,
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Recent",style: TextStyle(fontSize: 17),),
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDwmG52pVI5JZfn04j9gdtsd8pAGbqjjLswg&usqp=CAU"
    )),title: Text("Vismaya",style: TextStyle(color: Colors.red),),
            subtitle: Text("Marach 1 2:29pm"),
            trailing: Icon(Icons.video_call),
            iconColor: Colors.red,onTap:() {

            },
            ),
          ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDwmG52pVI5JZfn04j9gdtsd8pAGbqjjLswg&usqp=CAU")),
    title: Text("Vismaya"),
            subtitle: Text("March 1 2:15pm"),
            trailing: Icon(Icons.call),
            iconColor: Colors.green,onTap: () {

            },
            ),
          ListTile(
            leading: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDwmG52pVI5JZfn04j9gdtsd8pAGbqjjLswg&usqp=CAU"
                )),title: Text("Rishal",style: TextStyle(color: Colors.black),),
            subtitle: Text("Marach 1 2:00Am"),
            trailing: Icon(Icons.call),
            iconColor: Colors.green,onTap:() {

          },
          ),
          ListTile(
            leading: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDwmG52pVI5JZfn04j9gdtsd8pAGbqjjLswg&usqp=CAU"
                )),title: Text("Rahees",style: TextStyle(color: Colors.red),),
            subtitle: Text("Marach 1 12:12Am"),
            trailing: Icon(Icons.video_call),
            iconColor: Colors.red,onTap:() {

          },
          ),
          ListTile(
            leading: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDwmG52pVI5JZfn04j9gdtsd8pAGbqjjLswg&usqp=CAU"
                )),title: Text("Aswin",style: TextStyle(color: Colors.black),),
            subtitle: Text("Marach 1 11:29Am"),
            trailing: Icon(Icons.call),
            iconColor: Colors.green,onTap:() {

          },
          ),
          ListTile(
            leading: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDwmG52pVI5JZfn04j9gdtsd8pAGbqjjLswg&usqp=CAU"
                )),title: Text("Akshay",style: TextStyle(color: Colors.red),),
            subtitle: Text("Marach 1 11:25Am"),
            trailing: Icon(Icons.call),
            iconColor: Colors.green,onTap:() {

          },
          ),
          ListTile(
            leading: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDwmG52pVI5JZfn04j9gdtsd8pAGbqjjLswg&usqp=CAU"
                )),title: Text("Adarsh",style: TextStyle(color: Colors.black),),
            subtitle: Text("Marach 1 11:15Am"),
            trailing: Icon(Icons.call),
            iconColor: Colors.green,onTap:() {

          },
          ),
          ListTile(
            leading: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDwmG52pVI5JZfn04j9gdtsd8pAGbqjjLswg&usqp=CAU"
                )),title: Text("Arun sagar ",style: TextStyle(color: Colors.red),),
            subtitle: Text("Marach 1 11:00Am"),
            trailing: Icon(Icons.call),
            iconColor: Colors.green,onTap:() {

          },
          ),
          ListTile(
            leading: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDwmG52pVI5JZfn04j9gdtsd8pAGbqjjLswg&usqp=CAU"
                )),title: Text("Vismaya",style: TextStyle(color: Colors.red),),
            subtitle: Text("Marach 1 10:58Am"),
            trailing: Icon(Icons.call),
            iconColor: Colors.green,onTap:() {

          },
          ),
          ListTile(
            leading: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDwmG52pVI5JZfn04j9gdtsd8pAGbqjjLswg&usqp=CAU"
                )),title: Text("Vismaya",style: TextStyle(color: Colors.green),),
            subtitle: Text("Marach 1 10:35Am"),
            trailing: Icon(Icons.call),
            iconColor: Colors.green,onTap:() {

          },
          ),
        ],
      ),
    );
  }
}
