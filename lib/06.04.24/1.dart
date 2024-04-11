import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'login page.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'Wizard Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: WizardPage(),
    );
  }
}

class WizardPage extends StatefulWidget {
  @override
  _WizardPageState createState() => _WizardPageState();
}

class _WizardPageState extends State<WizardPage> {
  PageController _pageController = PageController(initialPage: 0);
  int _currentPageIndex = 0;

  List<Widget> _pages = [
    WizardStepPage(title: "Shope Easy", content: "Welcome to ShopEasy, your ultimate destination for hassle-free online shopping! Browse through thousands of products across various categories including fashion, electronics, home essentials, and more. With our user-friendly interface and secure payment options, shopping has never been easier. Stay updated with the latest trends, exclusive deals, and exciting offers. Shop now and enjoy a seamless shopping experience with ShopEasy!'", lottieanimation: "assets/image/Animation - 1712378381823.json"),
    WizardStepPage(title: "ABOUT US", content: "At ShopEasy, were passionate about simplifying your shopping experience. With a curated selection of products, user-friendly interface, and secure payment options, we aim to make shopping convenient and enjoyable for you. Explore our diverse range of items and discover the ease of shopping with ShopEasy today!", lottieanimation: "assets/image/Animation - 1712383771696.json"),
    WizardStepPage(title: "ABOUT US", content: "At ShopEasy, were passionate about simplifying your shopping experience. With a curated selection of products, user-friendly interface, and secure payment options, we aim to make shopping convenient and enjoyable for you. Explore our diverse range of items and discover the ease of shopping with ShopEasy today!", lottieanimation: "assets/image/Animation - 1712383771696.json")
  ];

  void _nextPage() {
    if (_currentPageIndex < _pages.length - 1) {
      _pageController.nextPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.ease,
      );
      setState(() {
        _currentPageIndex++;
      });
    }else{
      Navigator.push(context, MaterialPageRoute(builder: (context) => Login(),));
    }
  }

  void _previousPage() {
    if (_currentPageIndex > 0) {
      _pageController.previousPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.ease,
      );
      setState(() {
        _currentPageIndex++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _currentPageIndex = index;
                });
              },
              children: _pages,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 58.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                if (_currentPageIndex>0)
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.blueGrey,
                        minimumSize: Size(100, 70),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        )
                    ),
                    onPressed: _previousPage,
                    child: Icon(
                      Icons.arrow_circle_left,color: Colors.black,
                      size: 50,)
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.blueGrey,
                        minimumSize: Size(100, 70),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        )
                    ),
                    onPressed: _nextPage,
                    child:  Icon(
                        Icons.arrow_circle_right,color: Colors.black, size: 50)
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class WizardStepPage extends StatelessWidget {
  final String title;
  final String content;
  final String lottieanimation;

  const WizardStepPage({Key? key, required this.title, required this.content,required this.lottieanimation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          Lottie.asset(lottieanimation,height: 300,width: 300),
          SizedBox(height: 20,),
          Text(
            title,
            style: TextStyle(
              fontSize: 30,
              color: Colors.orange.shade900,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          Text(
            content,
            style: TextStyle(
              fontSize: 18,
              color: Colors.brown
            ),
          ),
        ],
      ),
    );
  }
}