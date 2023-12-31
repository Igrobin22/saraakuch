import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'homeScreen.dart';
import 'package:get/get.dart';
import 'bottomNavigationBar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        builder: (context, child){
      return GetMaterialApp(

        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(

          primaryColor: Colors.white,
          // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          textTheme: TextTheme(
            bodyText1: TextStyle(fontFamily: 'Poppins'),
            bodyText2: TextStyle(fontFamily: 'Poppins')),
          useMaterial3: true,
        ),
        home:BottomNavigationBarCustom(),
      );
    });
  }
}


