import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDwmG52pVI5JZfn04j9gdtsd8pAGbqjjLswg&usqp=CAU"),
            ),
            title: Text("My status"),onTap: () {

            },
          ),
            Text("Recent status",style: TextStyle(color: Colors.black,fontSize: 20),),
            ListTile(leading: CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqNbKVTGAWlEe65Ao0ILXrAQzupIZOpp6qYw&usqp=CAU"),
            ),
            title: Text("athirek"),
              subtitle: Text("12 minutes ago"),
              onTap: () {

            },
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: ListTile(leading: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT1_vhcAqN4iCW1TBLpH0Y9jbBbWvB_2j5ZYg&usqp=CAU"),
              ),title: Text("Rishal"),
                subtitle: Text("13 minutes ago"),
                onTap:() {

                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: ListTile(leading: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTC_K6SToici2Ahd5TaKNJQCVYJ3keBbqmZaA&usqp=CAU"),
              ),title: Text("reshna futura"),
                  subtitle: Text("13 minutes ago")
                  ,onTap: () {

              },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: ListTile(leading: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDwmG52pVI5JZfn04j9gdtsd8pAGbqjjLswg&usqp=CAU"),
              ),title: Text("manuvinod"),
                subtitle: Text("15 minuts afo"),
                onTap: () {

              },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDwmG52pVI5JZfn04j9gdtsd8pAGbqjjLswg&usqp=CAU"),
                ),title: Text("Rahees"),
                subtitle: Text("20 minutes ago"),
                onTap: () {

                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage("data:image/jpeg;base64,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")),
                title: Text("siddarth"),
                subtitle: Text("1 hour ago"),
                onTap: () {

                },
                ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS9CEW0ize0GxzzbJu1_SzO1gip6TCMjXsJjg&usqp=CAU")),
                title: Text("vaishnav"),
                subtitle: Text("1 hour ago"),
                onTap: () {

                },
                ),
            ),
            ListTile(
              leading: Text("Viewed updates",style: TextStyle(fontSize: 15),),
              trailing: Icon(Icons.keyboard_arrow_down_sharp),
            ),
            ListTile(
              leading: Text("Chanels",style: TextStyle(fontSize: 15),),
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Text("stay updates on topic that matters to you find chanels to below"),
            ),
          ],
        ),
      ),
    );
  }
}
