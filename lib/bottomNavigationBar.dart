import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:get/get.dart';
import 'bottomNavigationBarController.dart';
import 'checkoutScreen.dart';
import 'homeScreen.dart';


class BottomNavigationBarCustom extends StatefulWidget {
  @override
  _BottomNavigationBarCustomState createState() =>
      _BottomNavigationBarCustomState();
}

class _BottomNavigationBarCustomState extends State<BottomNavigationBarCustom> {
  BottomNavigationBarController controller = Get.put(BottomNavigationBarController());
  int _currentIndex = 0;

  final List<Widget> _screens = [
    // Replace these with your actual screens
    HomeScreen(),
    CheckoutScreen()

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Obx(() => IndexedStack(
        index: controller.index.value,
        children: _screens,
      ),),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.1),
            borderRadius: BorderRadius.all(Radius.circular(50))),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: GNav(
            onTabChange: (index){

               controller.bottomNaviCheck(index);

            },
            padding: EdgeInsets.all(16),
            // backgroundColor: Colors.black.withOpacity(0.3),
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: Color(0xffbe9516),
            gap: 6,
            tabs:  [
              GButton(

                icon: Icons.home_outlined,
                text: 'Home',
              ),
              GButton(

                icon: Icons.shopping_bag_outlined,
                text: 'Cart',
              ),
              GButton(
                icon: Icons.notifications_none_outlined,
                text: 'Notification',
              ),
              GButton(
                icon: Icons.person_outline,
                text: 'Profile',
              ),
            ],

          ),
        ),
      )
    );
  }
}



