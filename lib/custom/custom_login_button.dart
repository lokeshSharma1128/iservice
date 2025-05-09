import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  final Text? text;
  final VoidCallback? ontap;
  final ButtonStyle? buttonStyle;
  LoginButton({super.key, required this.text, this.ontap, this.buttonStyle});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 40,
        width: 140,
        child:
            ElevatedButton(onPressed: ontap, style: buttonStyle, child: text));
  }
}


class CustomButton extends StatelessWidget {
  final Text? text;
  final VoidCallback? ontap;
  final ButtonStyle? buttonStyle;
  final double? height;
  final double? width;
  final Decoration? decoration;

  CustomButton({super.key, required this.text, this.ontap, this.buttonStyle,
  this.height,
    this.decoration,
    this.width
});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
          height: height,
          width: width,
          decoration: decoration,
          child:Center(child: text)
      ),
    );
  }
}

