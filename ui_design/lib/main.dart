import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_design/pages/search_page.dart';

import 'pages/home_page.dart';
import 'pages/my_wallet.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Flutter Demo',
              theme: ThemeData(
                primarySwatch: Colors.blue,
              ),
              initialRoute: HomePage.routeName,
              routes: {
                HomePage.routeName: (_) => HomePage(),
                SearchPage.routeName: (_) => SearchPage(),
                MyWallet.routeName: (_) => MyWallet(),
              });
        });
  }
}
