import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:iservice/login_screen/sign_up_screen.dart';

import '../custom/custom_login_button.dart';
import '../custom/custom_textfield.dart';
import '../home_screen/home_screen.dart';
import '../utils/app_color.dart';
import '../utils/app_images.dart';
import '../utils/text_style.dart';



// class Login extends StatelessWidget {
//   const Login({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider<LoginBloc>(
//       create: (context) => LoginBloc(),
//       child: LoginScreen(),
//     );
//   }
// }

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // FirebaseAuth _auth = FirebaseAuth.instance;

  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneNoController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child:  SingleChildScrollView(
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
                                padding: const EdgeInsets.only(left: 25, top: 5),
                                child: Text(
                                  "Login Account",
                                  style: TextStyle(
                                    fontSize: size.width * 0.08,
                                    fontWeight: FontWeight.w400,
                                    overflow: TextOverflow.visible,
                                  ),
                                ),
                              ),
                            ],
                          ),

                          SizedBox(child: Text("Hi! Welcome back, you've been missed")),

                          const SizedBox(height: 20),
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
                            text: Text("Login",
                                style: AppTextStyles.subtitle),
                            buttonStyle: ButtonStyle(
                              backgroundColor: WidgetStatePropertyAll<Color>(
                                  AppColors.orange),
                            ),
                            ontap: () {
                              // if (_formKey.currentState!.validate()) {
                              //   // Handle sign-up logic
                              // }

                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                  const HomeScreen(),
                                ),
                              );

                            },
                          ),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "You Don't Have an Account?",
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
                                      const SignUpScreen(),
                                    ),
                                  );
                                },
                                child: Text(
                                  "SignUp",
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


                  SizedBox(
                    height: size.height * 0.30,
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
