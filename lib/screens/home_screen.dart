import 'package:flutter/material.dart';
import 'package:flutter_application_4/screens/page1.dart';
import 'package:flutter_application_4/screens/page2.dart';
import 'package:flutter_application_4/screens/page3.dart';

class HomeScreen extends StatefulWidget {
  String email;
  HomeScreen({super.key, required this.email});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  List<Widget> pages = [
    Page1(),
    Page2(),
    Page3(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: pages[currentIndex],
      // body: Center(
      //   child: Text(widget.email),
      // ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "page1"),
          BottomNavigationBarItem(icon: Icon(Icons.security), label: "page2"),
          BottomNavigationBarItem(icon: Icon(Icons.more), label: "page3")
        ],
        onTap: (value) {
          currentIndex = value;
          setState(() {});
          print(value);
        },
      ),
    );
  }
}
