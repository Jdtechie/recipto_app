import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:recipto_page/screen1.dart';
import 'package:recipto_page/screen2.dart';

import 'home_page.dart';
class MyBottomNavBar extends StatefulWidget {
  const MyBottomNavBar({Key? key}) : super(key: key);

  @override
  State<MyBottomNavBar> createState() => _MyBottomNavBarState();
}

class _MyBottomNavBarState extends State<MyBottomNavBar> {
  int setIndex = 0;
  List<Widget> widgetList = const[
      HomePage(),
      Screen1(),
      Screen2(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        children: widgetList,
        index: setIndex,
      ),
      bottomNavigationBar: BottomNavigationBar
        (
        selectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        onTap: (index){
          setState(() {
            setIndex = index;
          });
        },
        currentIndex: setIndex,
          items: [
        BottomNavigationBarItem
          (
          icon: SvgPicture.asset('assets/icons/Recipto_icon.svg'),
          label: 'Recipto',
        ),
        BottomNavigationBarItem
          (
          icon: SvgPicture.asset('assets/icons/bag.svg'),
          label: 'Orders',
        ),
        BottomNavigationBarItem
          (
          icon: SvgPicture.asset('assets/icons/camera_scan.svg'),
          label: 'Scan',
        ),
            BottomNavigationBarItem
              (
              icon: SvgPicture.asset('assets/icons/explore.svg'),
              label: 'Store Pay',
            ),
            BottomNavigationBarItem
              (
              icon: SvgPicture.asset('assets/icons/Profile - Rounded.svg'),
              label: 'Profile',
            ),
      ]),
    );
  }
}

