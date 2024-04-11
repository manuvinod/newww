import 'package:flutter/material.dart';

class Drawert extends StatelessWidget {
  const Drawert({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     home: Scaffold(
      appBar: AppBar(
        title: Text("drawer"),
      ),
      drawer:Drawer(
        backgroundColor: Colors.cyan.shade900,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              CircleAvatar(
                maxRadius: 50,
               backgroundImage: AssetImage("assets/image/download (3).jpg"),
              ),
              Column(
                children: [
                  Text("MANUVINOD"),
                  Text("manuvinod80@gmail.com"),
                  ListTile(
                    title: Text("My networks"),
                    leading: Icon(Icons.wifi),
                    iconColor: Colors.white,
                    onTap: () {

                    },
                  ),
                  ListTile(
                    title: Text("Wifi On Map"),
                    leading: Icon(Icons.location_on_sharp),
                    iconColor: Colors.white,
                    onTap: () {

                    },
                  ),
                  ListTile(
                    title: Text("Data Usage"),
                    leading: Icon(Icons.data_usage),
                    iconColor: Colors.white,
                    onTap: () {

                    },
                  ),
                  Divider(),
                  ListTile(
                    title: Text("Add Hidden Network"),
                    leading: Icon(Icons.add),
                    iconColor: Colors.white,
                    onTap: () {

                    },
                  ),
                  ListTile(
                    title: Text("Settings"),
                    leading: Icon(Icons.settings),
                    iconColor: Colors.white,
                    onTap: () {

                    },
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    )
    );
  }
}
