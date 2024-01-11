import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recipto_page/global/app_colors.dart';
import 'package:recipto_page/global/app_textStyle.dart';
import 'global/constant_AppBar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(80.0),
        child: MyAppBarWidget(),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 5, left: 19.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: TextSpan(
                                style: AppTextStyles.header1TextStyle(),
                                children: [
                                  TextSpan(
                                    text: 'Earn ',
                                    style: TextStyle(
                                      color: AppColors.kFillColor,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'with Recipto',
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              'Explore deals & try shopping',
                              style: AppTextStyles.subHead1TextStyle(),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 58.0),
                      Image.asset(
                        'assets/images/party_popper.png',
                        height: 70,
                        width: 70,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              height: 60,
              width: 328,
              margin: const EdgeInsets.symmetric(vertical: 10.0),
              // padding: const EdgeInsets.fromLTRB(0, 8, 12, 5),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.08),
                    spreadRadius: 2,
                    blurRadius: 4,
                    offset: Offset(2, 2),
                  ),
                ],
              ),
              child: Stack(
                children: <Widget>[
                  Positioned(
                    top: 0,
                    left: -6,
                    bottom: 5,
                    child: SvgPicture.asset(
                      'assets/icons/Messages_Icon.svg',
                      width: 75.0,
                      height: 75.0,
                    ),
                  ),
                  const SizedBox(width: 8.0),
                  Positioned(
                    top: 10,
                    left: 70,
                    child: Text(
                      'New Message',
                      style: AppTextStyles.subHead2TextStyle(),
                    ),
                  ),
                  const SizedBox(height: 3),
                  Positioned(
                    top: 30,
                    left: 70,
                    child: Text(
                      'Chat with Store',
                      style: AppTextStyles.header3TextStyle(),
                    ),
                  ),
                  Positioned(
                    top: 10,
                    right: 10,
                    bottom: 10,
                    child: Container(
                      width: 91,
                      height: 30,
                      decoration: BoxDecoration(
                        color: AppColors.kFillColor,
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: Center(
                        child: Text(
                          'Chat now',
                          style: AppTextStyles.buttonTextStyle(),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 355,
              width: 330,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 160.0,
                          width: 156.0,
                          padding:
                              const EdgeInsets.fromLTRB(10.0, 16.0, 0.0, 0.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: const LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Color(0xFFD6EFF5),
                                Color(0xFFB3BBE6),
                              ],
                            ),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                top: 0,
                                left: 5,
                                bottom: 5,
                                child: Text(
                                  'SHOP AT\nSTORE ',
                                  style: AppTextStyles.header2TextStyle(),
                                ),
                              ),
                              const SizedBox(height: 2),
                              Positioned(
                                top: 55,
                                left: 5,
                                child: Text(
                                  'Scan QR, Explore\nStore Deals',
                                  style: AppTextStyles.subHead2TextStyle(),
                                ),
                              ),
                              Positioned(
                                top: 90,
                                left: 5,
                                child: ElevatedButton(
                                  child: Center(
                                    child: Text(
                                      "Scan QR",
                                      style: AppTextStyles.buttonTextStyle(),
                                    ),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.black,
                                      minimumSize: const Size(24, 27),
                                      elevation: 0,
                                      padding: const EdgeInsets.all(8),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(5.0),
                                      )),
                                  onPressed: () {},
                                ),
                              ),
                              Positioned(
                                top: 60,
                                left: 70,
                                child: Align(
                                  alignment: Alignment.bottomRight,
                                  child: Image.asset(
                                      'assets/images/cart_img.png',
                                      height: 84,
                                      width: 84),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Container(
                          height: 160.0,
                          width: 156.0,
                          padding:
                              const EdgeInsets.fromLTRB(10.0, 16.0, 0.0, 0.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: const LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Color(0xFFF8FCC5),
                                Color(0xFFB0E392),
                              ],
                            ),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                top: 0,
                                left: 5,
                                bottom: 5,
                                child: Text(
                                  'UPLOAD ANY\nRECEIPTS',
                                  style: AppTextStyles.header2TextStyle(),
                                ),
                              ),
                              const SizedBox(height: 2),
                              Positioned(
                                top: 55,
                                left: 5,
                                child: Text(
                                  'Scan QR, Explore\nStore Deals',
                                  style: AppTextStyles.subHead2TextStyle(),
                                ),
                              ),
                              Positioned(
                                top: 90,
                                left: 5,
                                child: ElevatedButton(
                                  child: Center(
                                    child: Text(
                                      "Upload Bill",
                                      style: AppTextStyles.buttonTextStyle(),
                                    ),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.black,
                                      minimumSize: const Size(24, 27),
                                      elevation: 0,
                                      padding: EdgeInsets.all(8),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(5.0),
                                      )),
                                  onPressed: () {},
                                ),
                              ),
                              Positioned(
                                top: 60,
                                left: 75,
                                child: Align(
                                  alignment: Alignment.bottomRight,
                                  child: Image.asset(
                                      'assets/images/receipt_img.png',
                                      height: 84,
                                      width: 84),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 76.0,
                        width: 156.0,
                        // padding: EdgeInsets.fromLTRB(10.0, 16.0, 0.0, 10.0),
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(236, 239, 249, 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              top: 20,
                              bottom: 10,
                              left: 10,
                              child: Text(
                                'STOREPLAY',
                                style: AppTextStyles.header2TextStyle(),
                              ),
                            ),
                            Positioned(
                              top: 40,
                              bottom: 10,
                              left: 10,
                              child: Text(
                                'Pay at store',
                                style: AppTextStyles.subHead3TextStyle(),
                              ),
                            ),
                            Positioned(
                              top: 20,
                              left: 115,
                              child: Image.asset(
                                'assets/images/storePlay.png',
                                height: 40,
                                width: 40,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Container(
                        height: 76.0,
                        width: 156.0,
                        // padding: EdgeInsets.fromLTRB(10.0, 16.0, 10, 10.0),
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(236, 239, 249, 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              top: 20,
                              bottom: 10,
                              left: 10,
                              child: Text(
                                'BRANDS',
                                style: AppTextStyles.header2TextStyle(),
                              ),
                            ),
                            Positioned(
                              top: 40,
                              bottom: 10,
                              left: 10,
                              child: Text(
                                'Buy with deals',
                                style: AppTextStyles.subHead3TextStyle(),
                              ),
                            ),
                            Positioned(
                              top: 20,
                              left: 115,
                              child: Image.asset(
                                'assets/images/brands.png',
                                height: 40,
                                width: 40,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 76.0,
                        width: 156.0,
                        decoration: BoxDecoration(
                          color: AppColors.kSecondaryLightColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              top: 20,
                              bottom: 10,
                              left: 10,
                              child: Text(
                                'SCAN',
                                style: AppTextStyles.header2TextStyle(),
                              ),
                            ),
                            Positioned(
                              top: 40,
                              bottom: 10,
                              left: 10,
                              child: Text(
                                'Scan receipts',
                                style: AppTextStyles.subHead3TextStyle(),
                              ),
                            ),
                            Positioned(
                              top: 20,
                              left: 115,
                              child: Image.asset(
                                'assets/images/scan.png',
                                height: 40,
                                width: 40,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Container(
                        height: 76.0,
                        width: 156.0,
                        // padding: EdgeInsets.fromLTRB(10.0, 16.0, 10, 10.0),
                        decoration: BoxDecoration(
                          color: AppColors.kSecondaryLightColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              top: 20,
                              bottom: 10,
                              left: 10,
                              child: Text(
                                'ORDERS',
                                style: AppTextStyles.header2TextStyle(),
                              ),
                            ),
                            Positioned(
                              top: 40,
                              bottom: 10,
                              left: 10,
                              child: Text(
                                'Shop nearby',
                                style: AppTextStyles.subHead3TextStyle(),
                              ),
                            ),
                            Positioned(
                              top: 20,
                              left: 115,
                              child: Image.asset(
                                'assets/images/orders.png',
                                height: 40,
                                width: 40,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 8),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 150,
              color: AppColors.kPrimaryLightColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 0.0),
                    child: Text(
                      'Enjoy Earning!',
                      style: AppTextStyles.footerTextStyle(),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'crafted with ',
                          style: AppTextStyles.footerSubTextStyle(),
                        ),
                        Image.asset(
                          'assets/images/heart.png',
                          height: 30,
                          width: 30,
                        ),
                        Text(
                          ' in Hyderabad, India',
                          style: TextStyle(
                            color: AppColors.kSecondaryTextColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
