import 'package:flutter/material.dart';

class Last extends StatelessWidget {
  const Last({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Home"),
          backgroundColor: Colors.amber.shade800,
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward),color: Colors.black,)
          ],
          bottom: TabBar(indicatorColor: Colors.deepOrange,
          labelColor: Colors.black,
          tabs: [
            Tab(text: "Report",),
            Tab(text: "Final Survey",)
          ],
          ),
        ),
        drawer: Drawer(),
        body: Column(
          children: [
            Card(

            )
          ],
        ),
      ),
    );
  }
}
