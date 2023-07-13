import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:saraakuch/homeScreen.dart';
import 'checkoutScreenController.dart';
import 'const.dart';
import 'package:get/get.dart';

class CheckoutScreen extends StatelessWidget {
   CheckoutScreen({Key? key}) : super(key: key);
  static const IconData payment = IconData(0xe481, fontFamily: 'MaterialIcons');
 CheckoutScreenController controller = Get.put(CheckoutScreenController());
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
          onPressed: () {},
        ),
        centerTitle: true,
        title: Text(
          'Checkout',
          style: TextStyle(color: Colors.white),
        ),
        toolbarHeight: 60,
        backgroundColor: Colors.black,
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 5),
                padding: EdgeInsets.symmetric(horizontal: 10),
                height: 530,
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(5)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      child: Text(
                        'DELIVERY ADDRESS',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ),
                    // home address listTile start
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.1),
                          border: Border.all(color: kGoldColor),
                          borderRadius: BorderRadius.circular(5)),
                      child: ListTile(
                        subtitle: Text(
                          'Vill Mahay Kalan, Teh/P.O. Sarai Alamgir, District Gujrat',
                          overflow: TextOverflow.ellipsis,
                          softWrap: true,
                          style: TextStyle(color: Colors.white),
                        ),
                        title: Text(
                          'HOME ADDRESS',
                          style: TextStyle(color: kGoldColor),
                        ),
                        trailing: Container(
                          child: Icon(
                            Icons.check,
                            size: 30,
                            color: Colors.black,
                          ),
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: kGoldColor,
                              borderRadius: BorderRadius.circular(40.0)),
                        ),
                      ),
                    ),
                    // home address listtile end

                    Padding(
                      padding: EdgeInsets.only(
                          left: 10, right: 10, bottom: 10, top: 70),
                      child: Text(
                        'PAYMENT METHOD',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ),
                    // Payment method 1 container start
                    Obx(() => Container(
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.1),
                           border:controller.getSelected(0)? Border.all(color: kGoldColor):null,
                          borderRadius: BorderRadius.circular(5)
                      ),
                      child: ListTile(
                        onTap: (){
                          controller.selectedIndex(0);
                        },
                        leading: Icon(
                          Icons.payment,
                          color: Colors.white,
                        ),
                        title: Text(
                          '**** **** **** 5435',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(color: Colors.white),
                        ),
                        trailing: controller.getSelected(0)?
                        Container(
                          child: Icon(
                            Icons.check,
                            size: 30,
                            color: Colors.black,
                          ),
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: kGoldColor,
                              borderRadius: BorderRadius.circular(40.0)),
                        ): null,
                      ),
                    ),),
                    // Payment method 1 container end
                    SizedBox(
                      height: 10,
                    ),
                    // Payment method 2 container start
                    Obx(() => Container(
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.1),
                        border:controller.getSelected(1)? Border.all(color: kGoldColor):null,
                          borderRadius:BorderRadius.circular(5),
                      ),
                      child: ListTile(
                          onTap: (){
                            controller.selectedIndex(1);
                          },
                          leading: Icon(
                            Icons.attach_money,
                            color: Colors.white,
                          ),
                          title: Text(
                            'Cash on delivery',
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(color: Colors.white),
                          ),
                          trailing: controller.getSelected(1)?Container(
                            child: Icon(
                              Icons.check,
                              size: 30,
                              color: Colors.black,
                            ),
                            margin: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: kGoldColor,
                                borderRadius: BorderRadius.circular(40.0)),
                          ): null
                      ),
                    ),),
                    // Payment method 2 container end
                    Padding(
                      padding: EdgeInsets.only(
                          left: 10, right: 10, bottom: 10, top: 70),
                      child: Text(
                        'PRODUCT DETAIL',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ),
                    // home address container start
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.1),
                          border: Border.all(color: kGoldColor),
                          borderRadius: BorderRadius.circular(5)),
                      child: ListTile(
                        subtitle: Text(
                          'Hair Care Serum',
                          overflow: TextOverflow.ellipsis,
                          softWrap: true,
                          style: TextStyle(color: Colors.white),
                        ),
                        title: Text(
                          'NAME',
                          style: TextStyle(color: kGoldColor),
                        ),
                        trailing: Container(
                          child: Icon(
                            Icons.check,
                            size: 30,
                            color: Colors.black,
                          ),
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: kGoldColor,
                              borderRadius: BorderRadius.circular(40.0)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              TextButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  height: 100,
                                  width: 100,
                                  child: Icon(
                                    Icons.check,
                                    size: 80,
                                    weight: 100,
                                    color: kGoldColor,
                                  ),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      border: Border.all(
                                          width: 7,
                                          color: kGoldColor.withOpacity(0.7))),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  textAlign: TextAlign.center,
                                  'Your order is successfully',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Get.to(()=>() => HomeScreen());
                                  },
                                  child: Container(
                                    margin: EdgeInsets.only(top: 10),
                                    padding: EdgeInsets.all(5),
                                    height: 50,
                                    width: double.infinity,
                                    alignment: Alignment.center,
                                    child: Text(
                                      textAlign: TextAlign.center,
                                      'Continue Shopping',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20.sp),
                                    ),
                                    decoration: BoxDecoration(
                                        color: kGoldColor,
                                        borderRadius:
                                            BorderRadius.circular(40)),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: Container(
                                    margin: EdgeInsets.only(top: 10),
                                    height: 50,
                                    width: double.infinity,
                                    alignment: Alignment.center,
                                    child: Text(
                                      'Go to cart',
                                      style: TextStyle(
                                          color: Colors.black.withOpacity(0.5),
                                          fontSize: 20),
                                    ),
                                    decoration: BoxDecoration(
                                        color: Colors.white.withOpacity(0.1),
                                        borderRadius:
                                            BorderRadius.circular(40)),
                                  ),
                                )
                              ],
                            ),
                          );
                        });
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: 10),
                    height: 50,
                    // width: 300.w,
                    alignment: Alignment.center,
                    child: Text(
                      'Payment',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.1),
                        border: Border.all(color: kGoldColor),
                        borderRadius: BorderRadius.circular(40)),
                  ))
            ],
          ),
        ),
      ),
      // bottomNavigationBar: reusableBottomNavigationBar(
      //
      // ),
    );
  }
}
