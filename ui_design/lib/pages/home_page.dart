import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_design/pages/my_wallet.dart';
import 'package:ui_design/pages/search_page.dart';

import '../Colors/custom_colors.dart';

class HomePage extends StatefulWidget {
  static const String routeName = '/';

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomAppBar(
          clipBehavior: Clip.antiAlias,
          shape: CircularNotchedRectangle(),
          notchMargin: 10.0,
          child: BottomNavigationBar(
              currentIndex: _selectedIndex,
              selectedItemColor: Colors.white,
              backgroundColor: Colors.white70,
              onTap: (value) {
                setState(() {
                  _selectedIndex = value;
                });
              },
              items: [
                BottomNavigationBarItem(
                    icon: SizedBox(
                        height: 45.h,
                        width: 45.w,
                        child: Image.asset("images/tabbar_left.png")),
                    label: ''),
                BottomNavigationBarItem(
                    icon: SizedBox(
                      height: 45.h,
                      width: 45.w,
                      child: Image.asset("images/tabbar_right.png"),
                    ),
                    label: ''),
              ]),
        ),
        body: _selectedIndex == 0 ? SearchPage() : MyWallet(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: MyColor.color1,
          child: Icon(
            Icons.home,
            color: Colors.white,
            size: 50.sp,
          ),
        ),
      ),
    );
  }
}
