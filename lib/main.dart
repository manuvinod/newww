import 'package:flutter/material.dart';
import '05.03.24/Doctorspoint/1.dart';
import '05.03.24/Doctorspoint/2.dart';
import '05.03.24/Doctorspoint/3.dart';
import '06.04.24/1.dart';
import '07.03.24/task1/1.dart';
import '07.03.24/task1/2.dart';
import '07.03.24/task1/frgt pswrd.dart';
import '07.03.24/task1/signup.dart';
import '12.03.24/1.dart';
import '22-02-24/checkBox.dart';
import '22-02-24/ui task.dart';
import '22-02-24/ui task2.dart';
import '29.02.24/watsapp/body.dart';
import '07.03.24/task1/1.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:SiderPage(),
    );
  }
}

