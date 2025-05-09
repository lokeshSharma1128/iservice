import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:iservice/login_screen/sign_up_screen.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';

import '../custom/custom_login_button.dart';
import '../custom/custom_textfield.dart';
import '../utils/app_color.dart';
import '../utils/app_images.dart';
import '../utils/text_style.dart';
import '../custom/custom_bottom_navigation_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>with TickerProviderStateMixin {
  // FirebaseAuth _auth = FirebaseAuth.instance;

  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneNoController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();



    @override
    Widget build(BuildContext context) {
      final screenWidth = MediaQuery
          .of(context)
          .size
          .width;
      final double cardHeight = 110;

      return Scaffold(

        body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: 230,
                    decoration: BoxDecoration(
                      color: AppColors.orange,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.elliptical(180, 130),
                          bottomRight: Radius.elliptical(180, 130)),
                    ),
                    child: Center(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.white,
                                  child: CircleAvatar(
                                    radius: 14,
                                    backgroundColor: Colors.orange,
                                  ),
                                ),
                                Spacer(),
                                CircleAvatar(
                                  backgroundColor: Colors.white,
                                  child: CircleAvatar(
                                    radius: 14,
                                    backgroundColor: Colors.orange,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: CustomTextField(
                                hintText: "Search",
                                suffixIcon: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: CircleAvatar(
                                    backgroundColor: Colors.white,
                                    child: IconButton(
                                      icon: const Icon(Icons.search),
                                      color: Colors.grey,
                                      onPressed: () {},
                                    ),
                                  ),
                                )),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Container(
                            height: 10,
                            width: 60,
                            decoration: BoxDecoration(
                                color: Colors.brown,
                                borderRadius: BorderRadius.all(
                                    Radius.circular(18))),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      children: [
                        Text(
                          "Special For You",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w700),
                        ),
                        Spacer(),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "See All",
                              style: TextStyle(color: AppColors.orange),
                            ))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: SizedBox(
                      height: 200,
                      // Give a fixed height to constrain the ListView
                      child: ListView(
                          scrollDirection: Axis.horizontal, children: [
                        Row(
                          spacing: 10,
                          children: [
                            Container(
                                width: 300,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(30)),
                                ),
                                child: Stack(
                                  children: [
                                    // Background Image
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(
                                          30),
                                      // optional: to match container styling
                                      child: Image.asset(
                                        AppImages.faceMask,
                                        fit: BoxFit.cover,
                                        width: double.infinity,
                                        height: 200, // Set a fixed height if needed
                                      ),
                                    ),

                                    // Positioned Text
                                    Positioned(
                                      top: 35,
                                      left: 20,
                                      child: RichText(
                                        text: TextSpan(
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 22),
                                          children: [
                                            TextSpan(
                                              text: "Get 25% Off on \n",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                  color: Colors.white),
                                            ),
                                            TextSpan(
                                              text: "Home Cleaning",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                  color: Colors.white),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),

                                    Positioned(
                                      bottom: 80,
                                      left: 20,
                                      child: RichText(
                                        text: TextSpan(
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10),
                                          children: [
                                            TextSpan(
                                              text:
                                              " There are many variations of passages of Lorem \n ",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.white),
                                            ),
                                            TextSpan(
                                              text: "Ipsum available",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.white),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),

                                    Positioned(
                                      bottom: 40,
                                      left: 20,
                                      child: CustomButton(
                                        width: 72,
                                        height: 28,
                                        text: Text("View",
                                            style: TextStyle(
                                                fontSize: 10,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w700)),
                                        buttonStyle: ButtonStyle(
                                          backgroundColor:
                                          WidgetStatePropertyAll<Color>(
                                              AppColors.orange),
                                        ),
                                        ontap: () {
                                          // if (_formKey.currentState!.validate()) {
                                          //   // Handle sign-up logic
                                          // }
                                        },
                                      ),
                                    ),
                                  ],
                                )),
                            Container(
                                width: 300,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(30)),
                                ),
                                child: Stack(
                                  children: [
                                    // Background Image
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(
                                          30),
                                      // optional: to match container styling
                                      child: Image.asset(
                                        AppImages.faceMask,
                                        fit: BoxFit.cover,
                                        width: double.infinity,
                                        height: 200, // Set a fixed height if needed
                                      ),
                                    ),

                                    // Positioned Text
                                    Positioned(
                                      top: 35,
                                      left: 20,
                                      child: RichText(
                                        text: TextSpan(
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 22),
                                          children: [
                                            TextSpan(
                                              text: "Get 25% Off on \n",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                  color: Colors.white),
                                            ),
                                            TextSpan(
                                              text: "Home Cleaning",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                  color: Colors.white),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),

                                    Positioned(
                                      bottom: 80,
                                      left: 20,
                                      child: RichText(
                                        text: TextSpan(
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10),
                                          children: [
                                            TextSpan(
                                              text:
                                              " There are many variations of passages of Lorem \n ",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.white),
                                            ),
                                            TextSpan(
                                              text: "Ipsum available",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.white),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),

                                    Positioned(
                                      bottom: 40,
                                      left: 20,
                                      child: CustomButton(
                                        width: 72,
                                        height: 28,
                                        text: Text("View",
                                            style: TextStyle(
                                                fontSize: 10,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w700)),
                                        buttonStyle: ButtonStyle(
                                          backgroundColor:
                                          WidgetStatePropertyAll<Color>(
                                              AppColors.orange),
                                        ),
                                        ontap: () {
                                          // if (_formKey.currentState!.validate()) {
                                          //   // Handle sign-up logic
                                          // }
                                        },
                                      ),
                                    ),
                                  ],
                                )),
                            Container(
                                width: 300,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(30)),
                                ),
                                child: Stack(
                                  children: [
                                    // Background Image
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(
                                          30),
                                      // optional: to match container styling
                                      child: Image.asset(
                                        AppImages.faceMask,
                                        fit: BoxFit.cover,
                                        width: double.infinity,
                                        height: 200, // Set a fixed height if needed
                                      ),
                                    ),

                                    // Positioned Text
                                    Positioned(
                                      top: 35,
                                      left: 20,
                                      child: RichText(
                                        text: TextSpan(
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 22),
                                          children: [
                                            TextSpan(
                                              text: "Get 25% Off on \n",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                  color: Colors.white),
                                            ),
                                            TextSpan(
                                              text: "Home Cleaning",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                  color: Colors.white),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),

                                    Positioned(
                                      bottom: 80,
                                      left: 20,
                                      child: RichText(
                                        text: TextSpan(
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10),
                                          children: [
                                            TextSpan(
                                              text:
                                              " There are many variations of passages of Lorem \n ",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.white),
                                            ),
                                            TextSpan(
                                              text: "Ipsum available",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.white),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),

                                    Positioned(
                                      bottom: 40,
                                      left: 20,
                                      child: CustomButton(
                                        width: 72,
                                        height: 28,
                                        text: Text("View",
                                            style: TextStyle(
                                                fontSize: 10,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w700)),
                                        buttonStyle: ButtonStyle(
                                          backgroundColor:
                                          WidgetStatePropertyAll<Color>(
                                              AppColors.orange),
                                        ),
                                        ontap: () {
                                          // if (_formKey.currentState!.validate()) {
                                          //   // Handle sign-up logic
                                          // }
                                        },
                                      ),
                                    ),
                                  ],
                                )),
                            Container(
                                width: 300,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(30)),
                                ),
                                child: Stack(
                                  children: [
                                    // Background Image
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(
                                          30),
                                      // optional: to match container styling
                                      child: Image.asset(
                                        AppImages.faceMask,
                                        fit: BoxFit.cover,
                                        width: double.infinity,
                                        height: 200, // Set a fixed height if needed
                                      ),
                                    ),

                                    // Positioned Text
                                    Positioned(
                                      top: 35,
                                      left: 20,
                                      child: RichText(
                                        text: TextSpan(
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 22),
                                          children: [
                                            TextSpan(
                                              text: "Get 25% Off on \n",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                  color: Colors.white),
                                            ),
                                            TextSpan(
                                              text: "Home Cleaning",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                  color: Colors.white),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),

                                    Positioned(
                                      bottom: 80,
                                      left: 20,
                                      child: RichText(
                                        text: TextSpan(
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10),
                                          children: [
                                            TextSpan(
                                              text:
                                              " There are many variations of passages of Lorem \n ",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.white),
                                            ),
                                            TextSpan(
                                              text: "Ipsum available",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.white),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),

                                    Positioned(
                                      bottom: 40,
                                      left: 20,
                                      child: CustomButton(
                                        width: 72,
                                        height: 28,
                                        text: Text("View",
                                            style: TextStyle(
                                                fontSize: 10,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w700)),
                                        buttonStyle: ButtonStyle(
                                          backgroundColor:
                                          WidgetStatePropertyAll<Color>(
                                              AppColors.orange),
                                        ),
                                        ontap: () {
                                          // if (_formKey.currentState!.validate()) {
                                          //   // Handle sign-up logic
                                          // }
                                        },
                                      ),
                                    ),
                                  ],
                                )),
                            Container(
                                width: 300,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(30)),
                                ),
                                child: Stack(
                                  children: [
                                    // Background Image
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(
                                          30),
                                      // optional: to match container styling
                                      child: Image.asset(
                                        AppImages.faceMask,
                                        fit: BoxFit.cover,
                                        width: double.infinity,
                                        height: 200, // Set a fixed height if needed
                                      ),
                                    ),

                                    // Positioned Text
                                    Positioned(
                                      top: 35,
                                      left: 20,
                                      child: RichText(
                                        text: TextSpan(
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 22),
                                          children: [
                                            TextSpan(
                                              text: "Get 25% Off on \n",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                  color: Colors.white),
                                            ),
                                            TextSpan(
                                              text: "Home Cleaning",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                  color: Colors.white),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),

                                    Positioned(
                                      bottom: 80,
                                      left: 20,
                                      child: RichText(
                                        text: TextSpan(
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10),
                                          children: [
                                            TextSpan(
                                              text:
                                              " There are many variations of passages of Lorem \n ",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.white),
                                            ),
                                            TextSpan(
                                              text: "Ipsum available",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.white),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),

                                    Positioned(
                                      bottom: 40,
                                      left: 20,
                                      child: CustomButton(
                                        width: 72,
                                        height: 28,
                                        text: Text("View",
                                            style: TextStyle(
                                                fontSize: 10,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w700)),
                                        buttonStyle: ButtonStyle(
                                          backgroundColor:
                                          WidgetStatePropertyAll<Color>(
                                              AppColors.orange),
                                        ),
                                        ontap: () {
                                          // if (_formKey.currentState!.validate()) {
                                          //   // Handle sign-up logic
                                          // }
                                        },
                                      ),
                                    ),
                                  ],
                                )),
                            Container(
                                width: 300,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(30)),
                                ),
                                child: Stack(
                                  children: [
                                    // Background Image
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(
                                          30),
                                      // optional: to match container styling
                                      child: Image.asset(
                                        AppImages.faceMask,
                                        fit: BoxFit.cover,
                                        width: double.infinity,
                                        height: 200, // Set a fixed height if needed
                                      ),
                                    ),

                                    // Positioned Text
                                    Positioned(
                                      top: 35,
                                      left: 20,
                                      child: RichText(
                                        text: TextSpan(
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 22),
                                          children: [
                                            TextSpan(
                                              text: "Get 25% Off on \n",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                  color: Colors.white),
                                            ),
                                            TextSpan(
                                              text: "Home Cleaning",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                  color: Colors.white),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),

                                    Positioned(
                                      bottom: 80,
                                      left: 20,
                                      child: RichText(
                                        text: TextSpan(
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10),
                                          children: [
                                            TextSpan(
                                              text:
                                              " There are many variations of passages of Lorem \n ",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.white),
                                            ),
                                            TextSpan(
                                              text: "Ipsum available",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.white),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),

                                    Positioned(
                                      bottom: 40,
                                      left: 20,
                                      child: CustomButton(
                                        width: 72,
                                        height: 28,
                                        text: Text("View",
                                            style: TextStyle(
                                                fontSize: 10,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w700)),
                                        buttonStyle: ButtonStyle(
                                          backgroundColor:
                                          WidgetStatePropertyAll<Color>(
                                              AppColors.orange),
                                        ),
                                        ontap: () {
                                          // if (_formKey.currentState!.validate()) {
                                          //   // Handle sign-up logic
                                          // }
                                        },
                                      ),
                                    ),
                                  ],
                                )),
                          ],
                        )
                      ]),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      children: [
                        Text(
                          "Category",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w700),
                        ),
                        Spacer(),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "See All",
                              style: TextStyle(color: AppColors.orange),
                            ))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: SizedBox(
                        height: 120,
                        // Give a fixed height to constrain the ListView
                        child: ListView(
                            scrollDirection: Axis.horizontal, children: [
                          Row(
                            children: [
                              Column(
                                children: [
                                  Container(
                                    width: 90,
                                    height: 85,
                                    margin: const EdgeInsets.only(
                                        right: 16),
                                    // Add spacing between items
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(30),
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.2),
                                          spreadRadius: 1,
                                          blurRadius: 5,
                                          offset: Offset(
                                              0,
                                              3), // changes position of shadow
                                        ),
                                      ],
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(
                                            10),
                                        // optional: to match container styling
                                        child: Image.asset(
                                          AppImages.electrician,
                                          fit: BoxFit.cover,
                                          width: double.infinity,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text("Electrician")
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    width: 90,
                                    height: 85,
                                    margin: const EdgeInsets.only(
                                        right: 16),
                                    // Add spacing between items
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(30),
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.2),
                                          spreadRadius: 1,
                                          blurRadius: 5,
                                          offset: Offset(
                                              0,
                                              3), // changes position of shadow
                                        ),
                                      ],
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(
                                            10),
                                        // optional: to match container styling
                                        child: Image.asset(
                                          AppImages.carpenter,
                                          fit: BoxFit.cover,
                                          width: double.infinity,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text("Carpenter")
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    width: 90,
                                    height: 85,
                                    margin: const EdgeInsets.only(
                                        right: 16),
                                    // Add spacing between items
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(10),
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.2),
                                          spreadRadius: 1,
                                          blurRadius: 5,
                                          offset: Offset(
                                              0,
                                              3), // changes position of shadow
                                        ),
                                      ],
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(
                                            10),
                                        // optional: to match container styling
                                        child: Image.asset(
                                          AppImages.plumber,
                                          fit: BoxFit.cover,
                                          width: double.infinity,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text("Plumber")
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    width: 90,
                                    height: 85,
                                    margin: const EdgeInsets.only(
                                        right: 16),
                                    // Add spacing between items
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(10),
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.2),
                                          spreadRadius: 1,
                                          blurRadius: 5,
                                          offset: Offset(
                                              0,
                                              3), // changes position of shadow
                                        ),
                                      ],
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(
                                            10),
                                        // optional: to match container styling
                                        child: Image.asset(
                                          AppImages.cleaningStaff,
                                          fit: BoxFit.cover,
                                          width: double.infinity,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text("Cleaner")
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    width: 90,
                                    height: 85,
                                    margin: const EdgeInsets.only(
                                        right: 16),
                                    // Add spacing between items
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(10),
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.2),
                                          spreadRadius: 1,
                                          blurRadius: 5,
                                          offset: Offset(
                                              0,
                                              3), // changes position of shadow
                                        ),
                                      ],
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(
                                            10),
                                        // optional: to match container styling
                                        child: Image.asset(
                                          AppImages.painter,
                                          fit: BoxFit.cover,
                                          width: double.infinity,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text("Painter")
                                ],
                              ),
                            ],
                          )
                        ])),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      children: [
                        Text(
                          "Top Services",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w700),
                        ),
                        Spacer(),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "See All",
                              style: TextStyle(color: AppColors.orange),
                            ))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: SizedBox(
                      height: 200,
                      child: ListView(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 5.0),
                              child: Container(
                                height: cardHeight,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 8.0),
                                margin: EdgeInsets.symmetric(vertical: 8),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(color: Colors.white,
                                      strokeAlign: BorderSide
                                          .strokeAlignOutside),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 10,
                                        offset: Offset(0, 2), spreadRadius: 2
                                    ),
                                  ],
                                ),
                                child: Row(
                                  children: [
                                    // Image section
                                    ClipRRect(
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        bottomLeft: Radius.circular(20),
                                      ),
                                      child: Image.asset(
                                        AppImages.electricianMan,
                                        width: cardHeight,
                                        // height: cardHeight,
                                        fit: BoxFit.cover,
                                      ),
                                    ),

                                    // Middle content
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10.0, top: 5),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment
                                              .start,
                                          mainAxisAlignment: MainAxisAlignment
                                              .center,
                                          children: [
                                            Row(
                                              children: [
                                                const Text(
                                                  "Electrician",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight
                                                        .bold,
                                                    fontSize: 12,
                                                  ),
                                                ),

                                                SizedBox(width: 84,),

                                                Icon(
                                                  Icons.star,
                                                  color: Colors.orange,
                                                  size: 20,
                                                ),
                                              ],
                                            ),
                                            const SizedBox(height: 4),
                                            Row(
                                              children: const [
                                                Icon(Icons.person,
                                                    size: 11,
                                                    color: Colors.grey),
                                                SizedBox(width: 4),
                                                Text(
                                                  "Jackson Henry",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 10),
                                                ),
                                              ],
                                            ),
                                            const SizedBox(height: 6),
                                            Row(
                                              children: [
                                                const Text(
                                                  "\$125.00",
                                                  style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .bold,
                                                      fontSize: 9),
                                                ),
                                                SizedBox(width: 54,),
                                                CustomButton(
                                                  height: 30,
                                                  width: 71,
                                                  decoration: BoxDecoration(
                                                      color: Colors.orange,
                                                      borderRadius: BorderRadius
                                                          .all(
                                                          Radius.circular(10))
                                                  ),
                                                  ontap: () {},
                                                  text: const Text(
                                                      "Book Now",
                                                      style: TextStyle(
                                                          fontSize: 10,
                                                          color: Colors.white,
                                                          fontWeight: FontWeight
                                                              .w700)
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),

                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 5.0),
                              child: Container(
                                height: cardHeight,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 8.0),
                                margin: EdgeInsets.symmetric(vertical: 8),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(color: Colors.white,
                                      strokeAlign: BorderSide
                                          .strokeAlignOutside),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 10,
                                        offset: Offset(0, 2), spreadRadius: 2
                                    ),
                                  ],
                                ),
                                child: Row(
                                  children: [
                                    // Image section
                                    ClipRRect(
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        bottomLeft: Radius.circular(20),
                                      ),
                                      child: Image.asset(
                                        AppImages.electricianMan,
                                        width: cardHeight,
                                        // height: cardHeight,
                                        fit: BoxFit.cover,
                                      ),
                                    ),

                                    // Middle content
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10.0, top: 5),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment
                                              .start,
                                          mainAxisAlignment: MainAxisAlignment
                                              .center,
                                          children: [
                                            Row(
                                              children: [
                                                const Text(
                                                  "Electrician",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight
                                                        .bold,
                                                    fontSize: 12,
                                                  ),
                                                ),

                                                SizedBox(width: 84,),

                                                Icon(
                                                  Icons.star,
                                                  color: Colors.orange,
                                                  size: 20,
                                                ),
                                              ],
                                            ),
                                            const SizedBox(height: 4),
                                            Row(
                                              children: const [
                                                Icon(Icons.person,
                                                    size: 11,
                                                    color: Colors.grey),
                                                SizedBox(width: 4),
                                                Text(
                                                  "Jackson Henry",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 10),
                                                ),
                                              ],
                                            ),
                                            const SizedBox(height: 6),
                                            Row(
                                              children: [
                                                const Text(
                                                  "\$125.00",
                                                  style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .bold,
                                                      fontSize: 9),
                                                ),
                                                SizedBox(width: 54,),
                                                CustomButton(
                                                  height: 30,
                                                  width: 71,
                                                  decoration: BoxDecoration(
                                                      color: Colors.orange,
                                                      borderRadius: BorderRadius
                                                          .all(
                                                          Radius.circular(10))
                                                  ),
                                                  ontap: () {},
                                                  text: const Text(
                                                      "Book Now",
                                                      style: TextStyle(
                                                          fontSize: 10,
                                                          color: Colors.white,
                                                          fontWeight: FontWeight
                                                              .w700)
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),

                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 5.0),
                              child: Container(
                                height: cardHeight,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 8.0),
                                margin: EdgeInsets.symmetric(vertical: 8),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(color: Colors.white,
                                      strokeAlign: BorderSide
                                          .strokeAlignOutside),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 10,
                                        offset: Offset(0, 2), spreadRadius: 2
                                    ),
                                  ],
                                ),
                                child: Row(
                                  children: [
                                    // Image section
                                    ClipRRect(
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        bottomLeft: Radius.circular(20),
                                      ),
                                      child: Image.asset(
                                        AppImages.electricianMan,
                                        width: cardHeight,
                                        // height: cardHeight,
                                        fit: BoxFit.cover,
                                      ),
                                    ),

                                    // Middle content
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10.0, top: 5),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment
                                              .start,
                                          mainAxisAlignment: MainAxisAlignment
                                              .center,
                                          children: [
                                            Row(
                                              children: [
                                                const Text(
                                                  "Electrician",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight
                                                        .bold,
                                                    fontSize: 12,
                                                  ),
                                                ),

                                                SizedBox(width: 84,),

                                                Icon(
                                                  Icons.star,
                                                  color: Colors.orange,
                                                  size: 20,
                                                ),
                                              ],
                                            ),
                                            const SizedBox(height: 4),
                                            Row(
                                              children: const [
                                                Icon(Icons.person,
                                                    size: 11,
                                                    color: Colors.grey),
                                                SizedBox(width: 4),
                                                Text(
                                                  "Jackson Henry",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 10),
                                                ),
                                              ],
                                            ),
                                            const SizedBox(height: 6),
                                            Row(
                                              children: [
                                                const Text(
                                                  "\$125.00",
                                                  style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .bold,
                                                      fontSize: 9),
                                                ),
                                                SizedBox(width: 54,),
                                                CustomButton(
                                                  height: 30,
                                                  width: 71,
                                                  decoration: BoxDecoration(
                                                      color: Colors.orange,
                                                      borderRadius: BorderRadius
                                                          .all(
                                                          Radius.circular(10))
                                                  ),
                                                  ontap: () {},
                                                  text: const Text(
                                                      "Book Now",
                                                      style: TextStyle(
                                                          fontSize: 10,
                                                          color: Colors.white,
                                                          fontWeight: FontWeight
                                                              .w700)
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),

                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 5.0),
                              child: Container(
                                height: cardHeight,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 8.0),
                                margin: EdgeInsets.symmetric(vertical: 8),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(color: Colors.white,
                                      strokeAlign: BorderSide
                                          .strokeAlignOutside),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 10,
                                        offset: Offset(0, 2), spreadRadius: 2
                                    ),
                                  ],
                                ),
                                child: Row(
                                  children: [
                                    // Image section
                                    ClipRRect(
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        bottomLeft: Radius.circular(20),
                                      ),
                                      child: Image.asset(
                                        AppImages.electricianMan,
                                        width: cardHeight,
                                        // height: cardHeight,
                                        fit: BoxFit.cover,
                                      ),
                                    ),

                                    // Middle content
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10.0, top: 5),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment
                                              .start,
                                          mainAxisAlignment: MainAxisAlignment
                                              .center,
                                          children: [
                                            Row(
                                              children: [
                                                const Text(
                                                  "Electrician",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight
                                                        .bold,
                                                    fontSize: 12,
                                                  ),
                                                ),

                                                SizedBox(width: 84,),

                                                Icon(
                                                  Icons.star,
                                                  color: Colors.orange,
                                                  size: 20,
                                                ),
                                              ],
                                            ),
                                            const SizedBox(height: 4),
                                            Row(
                                              children: const [
                                                Icon(Icons.person,
                                                    size: 11,
                                                    color: Colors.grey),
                                                SizedBox(width: 4),
                                                Text(
                                                  "Jackson Henry",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 10),
                                                ),
                                              ],
                                            ),
                                            const SizedBox(height: 6),
                                            Row(
                                              children: [
                                                const Text(
                                                  "\$125.00",
                                                  style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .bold,
                                                      fontSize: 9),
                                                ),
                                                SizedBox(width: 54,),
                                                CustomButton(
                                                  height: 30,
                                                  width: 71,
                                                  decoration: BoxDecoration(
                                                      color: Colors.orange,
                                                      borderRadius: BorderRadius
                                                          .all(
                                                          Radius.circular(10))
                                                  ),
                                                  ontap: () {},
                                                  text: const Text(
                                                      "Book Now",
                                                      style: TextStyle(
                                                          fontSize: 10,
                                                          color: Colors.white,
                                                          fontWeight: FontWeight
                                                              .w700)
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),

                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 5.0),
                              child: Container(
                                height: cardHeight,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 8.0),
                                margin: EdgeInsets.symmetric(vertical: 8),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(color: Colors.white,
                                      strokeAlign: BorderSide
                                          .strokeAlignOutside),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 10,
                                        offset: Offset(0, 2), spreadRadius: 2
                                    ),
                                  ],
                                ),
                                child: Row(
                                  children: [
                                    // Image section
                                    ClipRRect(
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        bottomLeft: Radius.circular(20),
                                      ),
                                      child: Image.asset(
                                        AppImages.electricianMan,
                                        width: cardHeight,
                                        // height: cardHeight,
                                        fit: BoxFit.cover,
                                      ),
                                    ),

                                    // Middle content
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10.0, top: 5),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment
                                              .start,
                                          mainAxisAlignment: MainAxisAlignment
                                              .center,
                                          children: [
                                            Row(
                                              children: [
                                                const Text(
                                                  "Electrician",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight
                                                        .bold,
                                                    fontSize: 12,
                                                  ),
                                                ),

                                                SizedBox(width: 84,),

                                                Icon(
                                                  Icons.star,
                                                  color: Colors.orange,
                                                  size: 20,
                                                ),
                                              ],
                                            ),
                                            const SizedBox(height: 4),
                                            Row(
                                              children: const [
                                                Icon(Icons.person,
                                                    size: 11,
                                                    color: Colors.grey),
                                                SizedBox(width: 4),
                                                Text(
                                                  "Jackson Henry",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 10),
                                                ),
                                              ],
                                            ),
                                            const SizedBox(height: 6),
                                            Row(
                                              children: [
                                                const Text(
                                                  "\$125.00",
                                                  style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .bold,
                                                      fontSize: 9),
                                                ),
                                                SizedBox(width: 54,),
                                                CustomButton(
                                                  height: 30,
                                                  width: 71,
                                                  decoration: BoxDecoration(
                                                      color: Colors.orange,
                                                      borderRadius: BorderRadius
                                                          .all(
                                                          Radius.circular(10))
                                                  ),
                                                  ontap: () {},
                                                  text: const Text(
                                                      "Book Now",
                                                      style: TextStyle(
                                                          fontSize: 10,
                                                          color: Colors.white,
                                                          fontWeight: FontWeight
                                                              .w700)
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),

                                  ],
                                ),
                              ),
                            ),
                          ]
                      ),
                    ),
                  ),
                ],
              ))),

        bottomNavigationBar: ElevatedBottomNavigationBar()
      );
    }
  }

