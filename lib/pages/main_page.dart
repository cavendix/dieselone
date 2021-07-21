import 'package:dieselone/pages/pages.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  Widget build(BuildContext context) {
    Widget customButtomNavbar() {
      return BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (value) {
          
          setState(() {
            currentIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icon.png',
                width: 20,
                color: currentIndex == 0 ? Colors.black : Colors.grey,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icon.png',
                width: 20,
                color: currentIndex == 1 ? Colors.black : Colors.grey,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icon.png',
                width: 20,
                color: currentIndex == 2 ? Colors.black : Colors.grey,
              ),
              label: ''),
        ],
      );
    }

    Widget body() {
      switch (currentIndex) {
        case 0:
          return Soal1();
          break;
        case 1:
          return Soal2();
          break;
        case 2:
          return Soal3();
          break;
        default:
          return Soal1();
      }
    }

    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: customButtomNavbar(),
      body: body(),
    );
  }
}
