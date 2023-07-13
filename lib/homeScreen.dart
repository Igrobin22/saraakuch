// ignore_for_file: prefer_const_constructors

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:saraakuch/homeScreenController.dart';
import 'package:get/get.dart';
import 'bottomNavigationBar.dart';
import 'categoryScreen.dart';
import 'const.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  List adsList = [
    {"id": 1, "images": 'images/1.png'},
    {"id": 2, "images": 'images/2.png'},
    {"id": 3, "images": 'images/3.png'}
  ];
  bool checkbox = false;

  List categoriesIcons = [
    {"cIcons": 'images/svgs/categoryIcon1.svg', "title": 'Hair Care Serum'},
    {"cIcons": 'images/svgs/categoryIcon2.svg', "title": 'Massage Oil'},
    {"cIcons": 'images/svgs/categoryIcon3.svg', "title": 'Hair Shampoo'},
    {
      "cIcons": 'images/svgs/categoryIcon4.svg',
      "title": 'After Shave Cream Cologne'
    },
  ];
  final CarouselController carouselController = CarouselController();
  HomeScreenController controller = Get.put(HomeScreenController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      drawer: Padding(
        padding: const EdgeInsets.only(top: 45),
        child: Drawer(
          child: Wrap(
            runSpacing: 10,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: ListTile(
                  onTap: () {},
                  title: Text(
                    'Home',
                    style: TextStyle(color: Colors.white),
                  ),
                  leading: Icon(
                    Icons.home_outlined,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: ListTile(
                  onTap: () {},
                  title: Text(
                    'Products',
                    style: TextStyle(color: Colors.white),
                  ),
                  leading: Icon(
                    Icons.production_quantity_limits,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: ListTile(
                  onTap: () {},
                  title: Text(
                    'Contact ',
                    style: TextStyle(color: Colors.white),
                  ),
                  leading: Icon(
                    Icons.phone,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: ListTile(
                  onTap: () {},
                  title: Text(
                    'About us',
                    style: TextStyle(color: Colors.white),
                  ),
                  leading: Icon(
                    Icons.error_outline,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          width: 270,
          backgroundColor: Colors.grey.shade900,
        ),
      ),
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: Colors.black,
        iconTheme: IconThemeData(color: kGoldColor),

        // leading: Container(
        //   margin: EdgeInsets.all(5.0),
        //   decoration: BoxDecoration(
        //       color: Color(0xffbe9516).withOpacity(0.2),
        //       shape: BoxShape.circle),
        //   height: 50,
        //   width: 50,
        //   child:  IconButton(icon: Icon(Icons.menu_open, color: Color(0xffbe9516)), onPressed: () {  },),
        // ),

        actions: [
          Text('SaraaKuch',
              style: TextStyle(
                  fontSize: 25,
                  color: Color(
                    0xfffbfee0,
                  ),
                  fontWeight: FontWeight.bold)),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              // row of search Products and filter button 
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: 50,
                    width: 270.w,
                    child: TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        contentPadding:EdgeInsets.only(top: 5) ,
                          prefixIcon: Padding(
                            padding: const EdgeInsets.symmetric(vertical:13.0,horizontal: 10.0),
                            child: FaIcon(
                              FontAwesomeIcons.search,
                              size: 20,
                              color: Colors.white,
                            ),
                          ),
                          hintText: 'Search Products',
                          hintStyle: TextStyle(
                              color: Colors.white.withOpacity(0.7),
                              fontWeight: FontWeight.w300),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                              borderSide: BorderSide.none),
                          filled: true,
                          fillColor: Color(0xffbe9516).withOpacity(0.2)),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              actions: [
                                ListTile(
                                    title: Row(
                                      children: [
                                        Expanded(
                                          child: Text(
                                            'After Shave Cream Cologne',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          padding: EdgeInsets.all(5),
                                          child: Text(
                                            '3',
                                            style:
                                                TextStyle(color: Colors.black),
                                          ),
                                        ),
                                      ],
                                    ),
                                    leading: Obx(
                                      () => Checkbox(
                                        value:
                                            controller.selectedCategorycheck(0),
                                        onChanged: (value) {
                                          controller.getCategoryCheck(0);
                                        },
                                      ),
                                    )),
                                ListTile(
                                  title: Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          'After Shave\n Lotion',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        padding: EdgeInsets.all(5),
                                        child: Text(
                                          '3',
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ),
                                    ],
                                  ),
                                  leading: Obx(() => Checkbox(
                                        value:
                                            controller.selectedCategorycheck(1),
                                        onChanged: (value) {
                                          controller.getCategoryCheck(1);
                                        },
                                      )),
                                ),
                                ListTile(
                                    title: Row(
                                      children: [
                                        Expanded(
                                          child: Text(
                                            'Barber Cologne',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          padding: EdgeInsets.all(5),
                                          child: Text(
                                            '3',
                                            style:
                                                TextStyle(color: Colors.black),
                                          ),
                                        ),
                                      ],
                                    ),
                                    leading: Obx(
                                      () => Checkbox(
                                        value:
                                            controller.selectedCategorycheck(2),
                                        onChanged: (value) {
                                          controller.getCategoryCheck(2);
                                        },
                                      ),
                                    )),
                                ListTile(
                                    title: Row(
                                      children: [
                                        Expanded(
                                          child: Text(
                                            'Beard Oil',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          padding: EdgeInsets.all(5),
                                          child: Text(
                                            '3',
                                            style:
                                                TextStyle(color: Colors.black),
                                          ),
                                        ),
                                      ],
                                    ),
                                    leading: Obx(
                                      () => Checkbox(
                                        value:
                                            controller.selectedCategorycheck(3),
                                        onChanged: (value) {
                                          controller.getCategoryCheck(3);
                                        },
                                      ),
                                    )),
                                ListTile(
                                    title: Row(
                                      children: [
                                        Expanded(
                                          child: Text(
                                            'Hair Care Mask',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          padding: EdgeInsets.all(5),
                                          child: Text(
                                            '3',
                                            style:
                                                TextStyle(color: Colors.black),
                                          ),
                                        ),
                                      ],
                                    ),
                                    leading: Obx(
                                      () => Checkbox(
                                        value:
                                            controller.selectedCategorycheck(4),
                                        onChanged: (value) {
                                          controller.getCategoryCheck(4);
                                        },
                                      ),
                                    )),
                                ListTile(
                                    title: Row(
                                      children: [
                                        Expanded(
                                          child: Text(
                                            'Hair Care Serum',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          padding: EdgeInsets.all(5),
                                          child: Text(
                                            '3',
                                            style:
                                                TextStyle(color: Colors.black),
                                          ),
                                        ),
                                      ],
                                    ),
                                    leading: Obx(
                                      () => Checkbox(
                                        value:
                                            controller.selectedCategorycheck(5),
                                        onChanged: (value) {
                                          controller.getCategoryCheck(5);
                                        },
                                      ),
                                    )),
                                ListTile(
                                    title: Row(
                                      children: [
                                        Expanded(
                                          child: Text(
                                            'Hair Conditioner Spray',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          padding: EdgeInsets.all(5),
                                          child: Text(
                                            '3',
                                            style:
                                                TextStyle(color: Colors.black),
                                          ),
                                        ),
                                      ],
                                    ),
                                    leading: Obx(
                                      () => Checkbox(
                                        value:
                                            controller.selectedCategorycheck(6),
                                        onChanged: (value) {
                                          controller.getCategoryCheck(6);
                                        },
                                      ),
                                    )),
                                ListTile(
                                    title: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Hair Gel',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          padding: EdgeInsets.all(5),
                                          child: Text(
                                            '3',
                                            style:
                                                TextStyle(color: Colors.black),
                                          ),
                                        ),
                                      ],
                                    ),
                                    leading: Obx(
                                      () => Checkbox(
                                        value:
                                            controller.selectedCategorycheck(7),
                                        onChanged: (value) {
                                          controller.getCategoryCheck(7);
                                        },
                                      ),
                                    )),
                              ],
                              title: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  IconButton(
                                    icon: Icon(Icons.close),
                                    color: kGoldColor,
                                    onPressed: () {
                                      Get.back();
                                    },
                                  ),
                                  Text(
                                    'Categories',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Get.back();
                                    },
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 5, horizontal: 10),
                                      decoration: BoxDecoration(
                                        color: kGoldColor,
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                      child: Text(
                                        'Done',
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              backgroundColor: Colors.grey.shade900,
                            );
                          });
                    },
                    // filter button
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Icon(Icons.tune, size: 28, color: Colors.black),
                      decoration: BoxDecoration(
                          color: Color(0xffbe9516), shape: BoxShape.circle),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 360,
                child: InkWell(
                  onTap: () {},
                  child: CarouselSlider(
                    items: adsList
                        .map(
                          (item) => ClipRRect(
                            borderRadius: BorderRadius.circular(
                                10.0), // Adjust the border radius as needed
                            child: Image.asset(
                              item['images'],
                              fit: BoxFit.cover,
                              width: double.infinity,
                            ),
                          ),
                        )
                        .toList(),
                    carouselController: carouselController,
                    options: CarouselOptions(
                      scrollDirection: Axis.horizontal,
                      autoPlay: true,
                      aspectRatio: 2.5,
                      viewportFraction: 1,
                      onPageChanged: (index, reason) {
                        controller.slidervalueUpdater(index);
                      },
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: adsList.asMap().entries.map((entry) {
                  return GestureDetector(
                      onTap: () => carouselController.animateToPage(entry.key),
                      child: GetBuilder<HomeScreenController>(
                        builder: (homeScreenController) {
                          return Container(
                            width: homeScreenController
                                        .sliderValueReturn()
                                        .value ==
                                    entry.key
                                ? 27
                                : 17,
                            height: 7.0,
                            margin: const EdgeInsets.only(
                                left: 3.0, right: 3.0, top: 5),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: homeScreenController
                                                .sliderValueReturn()
                                                .value ==
                                            entry.key
                                        ? Color(0xffbe9516)
                                        : Color(0xffbe9516).withOpacity(0.3)),
                                borderRadius: BorderRadius.circular(10),
                                color: homeScreenController
                                            .sliderValueReturn()
                                            .value ==
                                        entry.key
                                    ? Color(0xffbe9516)
                                    : Color(0xffbe9516).withOpacity(0)),
                          );
                        },
                      ));
                }).toList(),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        'Categories',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '14+',
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.7),
                            fontSize: 10,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(() => CategoryScreen());
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(color: kGoldColor)),
                      child: Text(
                        'See More >',
                        style: TextStyle(
                          color: kGoldColor,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),

              // categories container end
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 7),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 150,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: categoriesIcons.length,
                    padding: EdgeInsets.only(top: 5, right: 5),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.1),
                                  borderRadius: BorderRadius.circular(10)),
                              width: 100,
                              height: 100,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SvgPicture.asset(
                                  categoriesIcons[index]["cIcons"],
                                  height: 50,
                                  width: 50,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                                width: 100,
                                child: Text(
                                  categoriesIcons[index]["title"],
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      overflow: TextOverflow.ellipsis,
                                      color: Colors.white),
                                ))
                          ],
                        ),
                      );
                    },
                  )),
              // categories container end

              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Products',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  GestureDetector(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(color: kGoldColor)),
                      child: Text(
                        'See More >',
                        style: TextStyle(
                          color: kGoldColor,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 5,
              ),

              //products grid start
              SizedBox(
              
              
                child: GridView.builder(
                  shrinkWrap: true,
                  itemCount: 10,

                  padding: EdgeInsets.all(20),
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 10,
                    crossAxisCount: 2,
                  ),
                  itemBuilder: (context, index) {
                    return Container(
                      height: 130.h,
                      width: 160.w,
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(5)),
                      child: Column(
                        children: [
                          SizedBox(
                              height: 100.w,
                              child: Image.asset(
                                alignment: Alignment.topCenter,
                                'images/product.webp',
                                fit: BoxFit.cover,
                              )),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0).r,
                            child: Text(
                              'Hair care mask',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'Rs.953.00',
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  color: kGoldColor,
                                ),
                                textAlign: TextAlign.left,
                              ),
                              Text(
                                'Rs.1,270.00',
                                style: TextStyle(
                                  decoration: TextDecoration.lineThrough,
                                  decorationColor: kGoldColor,
                                  fontSize: 12.sp,
                                  color: Colors.white.withOpacity(0.5),
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
      // bottomNavigationBar: reusableBottomNavigationBar(),
    );
  }
}
