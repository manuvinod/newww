import 'package:flutter/material.dart';

class asgmnt5 extends StatefulWidget {
  const asgmnt5({super.key});

  @override
  State<asgmnt5> createState() => _asgmnt5State();
}

class _asgmnt5State extends State<asgmnt5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
body: Column(
  children: [
    Center(child: Image.network("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAAAmVBMVEX///9UxfgBV5sptvZOw/hmyvnd8v265fzY8P2lu9NBwfgATZYAUZjx+v7o9v4AsfUuaqUBU5TM2ObR7P0ARZMBUI4osO4AI0EAK0wBTYkBWJ0BR34BQXQGSHoARoABRHkBOmcEKkUANmA+aJEAP3wsY5kGQ3EFPmgANWIFNVgAL1cELk0AJ0kAHzoApOXM0tkANHoYYKC6y97l99FiAAADQElEQVR4nO3cjXKaUBCGYSNqU1uTmoRTFVS0bYz2v/d/cQXEFA1wfkg5uzvfewHOPrPIgRnHXg8hhBBCCCF9ozdtuvc9vr7r8cC98XDie35t1+Mr9wZD3+PrAxBA4gEIIPEABJB4AAJIPAABJB6AABIPQACJByCAxAMQQOIBCCDxAASQeAACSDwAASQegAASD0AAiQcggMQDEEDiAQgg8QAEkHgAAkg8AAEkHoAAEg9AAIkHIIDEAxBA4gEIIPEABJB4AAJIPAABJB6AABLvvwIno1bRB94Mxm26YQActPjwq1f560vCwIF0oPgNAghg1kQ6sNUOeQBbELkAnYl8gI5EDgd9KyKnDToRuQGtifyAlkSOQCsiT6AFkSvQmMgXaEjkDDQi8jroHYi8N2hA5A/UELXAgD6wkagHBgF9YAPRBOhM7BBYSzQDOhI7BdYQTYFOxI6BlURzoAOxc2AF0QZoTezgoH/ZBVELvA3ciR42mHVGtNugJdET8IxoD7QgegOWiC5AY6JH4DPRDWhI9AosiK5AI6JnYE50BxoQvQMzYguglkgAmBKbZ2gGaoheDnrLLg96KyKJDWrSbbCRKAVYS5QDrCFKAlYSZQEriNKAL4jygBdEicAzooyDvoEoc4MlolxgQZQMzImygSmRA3DUAhgEQ/rA3r3DbfQ59cn3+Ca1IKrl5y++xzfJnbhche8/+B7fJEeiSoHTvmDiEdiXS1TLKAeKJf4DCiWml+h8ehJKJKrHdQkokJgBw7JQGrEAloWyiOoxzoFnQklEtYtXFUI5xBQYzcMKoRSi2iXrebVQBlHtntarOqEEoto/xVF0Egokqv0hWR+F1UvkTlRfD0ncLORNTIHbTLiqv0p5E9XmWwo87bBWyJeoNh8PJeHlUxt/YgqcFcL0Kr147pZAzICZML/TpK+G/UU9kCUxBx6FcRT2m30ciUfgbL/dJtFUp+NILICzQxwuFkZAZsQCmMxNddyIOTCZa797bIlq830b9a3Wx4v4Y5aE9jhOxJ+/woazXQTx7sEZCCKZQAQRRBqBCCKINAIRRBBpBCKIINIIRBCZEN+59/CbwQ/8e3dv2/TH9/gIIYQQQuhV+guw4Ja59nVz8QAAAABJRU5ErkJggg==",width: 150,)),
    Padding(
      padding: const EdgeInsets.all(15),
      child: TextField(
        decoration: InputDecoration(
          hintText: "phone number",
          )
        ),
    ),
    Padding(
      padding: const EdgeInsets.all(15),
      child: TextField(
        decoration: InputDecoration(
          hintText: "password",
        ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(25),
      child: ElevatedButton(onPressed: () {

      },style: ElevatedButton.styleFrom(primary: Colors.blue,minimumSize: Size(500, 50),shape: RoundedRectangleBorder()),
          child: Text("Log in",style: TextStyle(color: Colors.white),)),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text("fogot password? No yawa.Tap me",style: TextStyle(color: Colors.black54,fontSize: 15,fontWeight: FontWeight.bold),),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(onPressed: () {

      },style: ElevatedButton.styleFrom(primary: Colors.grey,minimumSize: Size(500, 50),shape: RoundedRectangleBorder()),
          child: Text("No Account? Sign Up",style: TextStyle(color: Colors.black),)),
    )
  ],
),
    );
  }
}