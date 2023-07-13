import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'categoryScreen.dart';
import 'const.dart';

class ProductsScreen extends StatelessWidget {
  final String title;
  const ProductsScreen({Key? key, required this.title}) : super(key: key);

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
            Get.to(()=>CategoryScreen());
          },
        ),
        centerTitle: true,
        title: Text(
          title,
          style: TextStyle(color: Colors.white),
        ),
        toolbarHeight: 60,
        backgroundColor: Colors.black,
      ),
      body: SizedBox(
        height: 350.h,
        child: GridView.builder(
          padding: EdgeInsets.all(20),
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 16,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            // mainAxisSpacing: 10,
            // crossAxisSpacing: 10,
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
                    mainAxisAlignment:
                    MainAxisAlignment.spaceEvenly,
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
          itemCount: 4,
        ),
      ),
    );
  }
}
