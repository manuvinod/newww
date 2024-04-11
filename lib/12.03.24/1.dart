import 'package:flutter/material.dart';

class shift extends StatefulWidget {
  const shift({super.key});

  @override
  State<shift> createState() => _shiftState();
}

class _shiftState extends State<shift> {
  TimeOfDay SelectedTime=TimeOfDay.now();
  Future<void> _SelectedTime(BuildContext context)async{
    final TimeOfDay?picked=await showTimePicker(
      context: context,
      initialTime: SelectedTime,
    );
    if (picked!=null && picked!=SelectedTime ){
      setState(() {
        SelectedTime=picked;
      });
    }
  }
String?selectedvalue="choose status";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Center(child: Text("Shift Configaration",style: TextStyle(fontSize: 25),)),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Shift Name ',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.horizontal()
                  )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                maxLines: 3,
                decoration: InputDecoration(
                  hintText: 'shift description',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.horizontal()
                  )
                ),
              ),
            ),
            Row(
              children: [
                Text("status : ",style: TextStyle(fontWeight: FontWeight.bold),),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text("${selectedvalue??""}"),
                ),
                SizedBox(height: 15,width: 15,),
                DropdownButton(
                    value: selectedvalue, onChanged:(String?newValue){
                      setState(() {
                        selectedvalue=newValue;
                      });
                },
                    items: <String>["choose status","active", "not active"].
                    map<DropdownMenuItem<String>>((String value){
                      return DropdownMenuItem(
                          value: value,
                          child: Text(value),);
                    }).toList(),
                )
              ],
            ),
            Row(
              children: [
                Text("Monday-Friday"),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: TextEditingController(
                        text:"${SelectedTime.hour}:${SelectedTime.minute}",
                      ),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5)
                        ),
                          suffixIcon:IconButton(onPressed: ()=>_SelectedTime(context),
                              icon: Icon(Icons.access_time))
                      ),
                    ),
                  ),
                ),
                Expanded(
                    child: TextField(
                  controller: TextEditingController(
                    text:"${SelectedTime.hour}:${SelectedTime.minute}",
                  ),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5)
                      ),
                      suffixIcon:IconButton(onPressed: ()=>_SelectedTime(context),
                          icon: Icon(Icons.access_time))
                  ),
                ))
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text("Saturday"),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: TextEditingController(
                            text: "${SelectedTime.hour}:${SelectedTime.minute}",
                          ),
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            suffixIcon:IconButton(
                              icon: Icon(Icons.access_time),
                              onPressed: () => _SelectedTime(context),
                            ),
                          ),
                        ),
                      )),
                  Expanded(child: TextField(
                    controller: TextEditingController(
                      text:"${SelectedTime.hour}:${SelectedTime.minute}",
                    ),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5)
                        ),
                        suffixIcon:IconButton(onPressed: ()=>_SelectedTime(context),
                            icon: Icon(Icons.access_time))
                    ),
                  ))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text('sunday'),
                  SizedBox(
                    width: 45,
                  ),
                  Expanded(child: TextField(
                    controller: TextEditingController(
                      text: "${SelectedTime.hour}:${SelectedTime.minute}",
                    ),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)
                      ),
                      suffixIcon: IconButton(onPressed: ()=>_SelectedTime(context),
                          icon: Icon(Icons.access_time))
                    ),
                  )),
                  Expanded(child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: TextEditingController(
                        text: "${SelectedTime.hour}:${SelectedTime.minute}",
                      ),
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5)
                          ),
                          suffixIcon: IconButton(onPressed: ()=>_SelectedTime(context),
                              icon: Icon(Icons.access_time))
                      ),
                    ),
                  )),
                ],
              ),
            ),
            Row(
              children: [
                Text("Public Holiday"),
                Expanded(child: TextField(
                  controller: TextEditingController(
                    text: "${SelectedTime.hour}:${SelectedTime.minute}",
                  ),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5)
                      ),
                      suffixIcon: IconButton(onPressed: ()=>_SelectedTime(context),
                          icon: Icon(Icons.access_time))
                  ),
                )),
                Expanded(child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: TextEditingController(
                      text: "${SelectedTime.hour}:${SelectedTime.minute}",
                    ),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5)
                        ),
                        suffixIcon: IconButton(onPressed: ()=>_SelectedTime(context),
                            icon: Icon(Icons.access_time))
                    ),
                  ),
                )),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(onPressed: (){},
                        style: ElevatedButton.styleFrom(primary: Colors.blue.shade900,minimumSize: Size(150, 30)),
                        child: Text("save")),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: ElevatedButton(onPressed: (){},
                      style: ElevatedButton.styleFrom(primary: Colors.red,minimumSize: Size(150, 30)),
                      child: Text("Cacel")),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
