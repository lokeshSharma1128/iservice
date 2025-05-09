import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:iservice/custom/custom_textfield.dart';
import 'package:iservice/utils/text_style.dart';

import '../custom/custom_login_button.dart';
import '../utils/app_color.dart';
import '../utils/app_images.dart';
import 'login_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneNoController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
                children: [
                  // Top Section: Form
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          const SizedBox(height: 20),
                          Stack(
                            alignment: Alignment.centerLeft,
                            children: [
                              SvgPicture.asset(
                                AppImages.ellipse,
                                height: size.height * 0.1,
                                width: size.width * 0.35,
                                fit: BoxFit.contain,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 12, top: 5),
                                child: Text(
                                  "Create Account",
                                  style: TextStyle(
                                    fontSize: size.width * 0.08,
                                    fontWeight: FontWeight.w400,
                                    overflow: TextOverflow.visible,
                                  ),
                                ),
                              ),
                            ],
                          ),

                          const SizedBox(height: 30),
                          _buildInputSection(
                            "Username",
                            CustomTextField(
                              controller: emailController,
                              hintText: 'Enter Email',
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your email';
                                }
                                final emailRegex =
                                RegExp(r'^[^@]+@[^@]+\.[^@]+');
                                if (!emailRegex.hasMatch(value)) {
                                  return 'Please enter a valid email';
                                }
                                return null;
                              },
                            ),
                          ),
                          const SizedBox(height: 15),
                          _buildInputSection(
                            "Phone Number",
                            IntlPhoneField(
                              decoration: InputDecoration(
                                hintText: 'Enter Phone number',
                                filled: true,
                                fillColor: const Color(0xFFF2F2F2),
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 12, vertical: 10),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(14),
                                ),
                              ),
                              initialCountryCode: 'IN',
                              showDropdownIcon: true,
                              disableLengthCheck: true,
                              flagsButtonPadding:
                              const EdgeInsets.symmetric(horizontal: 8),
                              dropdownIconPosition: IconPosition.trailing,
                              onChanged: (phone) {
                                print(phone.completeNumber);
                              },
                              validator: (value) {
                                if (value == null) {
                                  return 'Please enter your phone number';
                                }
                                return null;
                              },
                            ),
                          ),
                          const SizedBox(height: 15),
                          _buildInputSection(
                            "Password",
                            CustomTextField(
                              controller: passwordController,
                              hintText: 'Enter Password',
                              obscureText: true,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your password';
                                }
                                if (value.length < 6) {
                                  return 'Password must be at least 6 characters long';
                                }
                                return null;
                              },
                            ),
                          ),
                          const SizedBox(height: 25),
                          LoginButton(
                            text: Text("Sign Up",
                                style: AppTextStyles.subtitle),
                            buttonStyle: ButtonStyle(
                              backgroundColor: WidgetStatePropertyAll<Color>(
                                  AppColors.orange),
                            ),
                            ontap: () {
                              if (_formKey.currentState!.validate()) {
                                // Handle sign-up logic
                              }
                            },
                          ),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "You Have an Account?",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.grey,
                                ),
                              ),
                              const SizedBox(width: 4),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                      const LoginScreen(),
                                    ),
                                  );
                                },
                                child: Text(
                                  "Login",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    color: AppColors.orange,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),

                  // Bottom Section: Image Stack
                  SizedBox(
                    height: size.height * 0.314,
                    width: double.infinity,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Transform.rotate(
                          angle: 3.14,
                          child: SvgPicture.asset(
                            AppImages.ellipse26,
                            width: size.width,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          left: 20,
                          bottom: 0,
                          child: Image.asset(
                            AppImages.homeService2,
                            height: size.height * 0.31,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
        )

      ),
    );
  }

  Widget _buildInputSection(String label, Widget field) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: 6),
        field,
      ],
    );
  }
}
