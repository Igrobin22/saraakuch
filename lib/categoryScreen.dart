import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:saraakuch/productsScreen.dart';
import 'bottomNavigationBar.dart';

class CategoryScreen extends StatelessWidget {
  CategoryScreen({Key? key}) : super(key: key);
  List categoriesIcons = [
    {"cIcons": 'images/svgs/categoryIcon1.svg', "title": 'Hair Care Serum'},
    {"cIcons": 'images/svgs/categoryIcon2.svg', "title": 'Massage Oil'},
    {"cIcons": 'images/svgs/categoryIcon3.svg', "title": 'Hair Shampoo'},
    {
      "cIcons": 'images/svgs/categoryIcon4.svg',
      "title": 'After Shave Cream Cologne'
    },

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Get.to(()=>BottomNavigationBarCustom());
          },
        ),
        centerTitle: true,
        title: Text(
          'Categories',
          style: TextStyle(color: Colors.white),
        ),
        toolbarHeight: 60,
        backgroundColor: Colors.black,
      ),
      body: Container(
        child: GridView.builder(
          itemCount: categoriesIcons.length,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(


                  crossAxisCount: 2),
          itemBuilder: (
              
              BuildContext context, int index) {
            return GestureDetector(
              onTap: (){
                Get.to(()=>ProductsScreen(title: categoriesIcons[index]["title"],));
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(10)),
                      width: 180,
                      height: 160,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: SvgPicture.asset(
                          categoriesIcons[index]["cIcons"],
                          height: 50,
                          width: 50,
                        ),
                      ),
                    ),


                    Text(
                      categoriesIcons[index]["title"],
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          overflow: TextOverflow.ellipsis,
                          color: Colors.white),
                    )
                  ],
                ),
              ),
            );
          },

        ),
      ),
    );
  }
}
