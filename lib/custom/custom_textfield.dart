import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final InputDecoration? decoration;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final bool obscureText;
  final int? maxLines;
  final int? minLines;
  final bool readOnly;
  final String? labelText;
  final String? hintText;
  final ValueChanged<String>? onChanged;
  final FormFieldValidator<String>? validator;
  final VoidCallback? onTap;
  final bool enabled;
  final Widget? prefixIcon;
  final Widget? suffixIcon;

  const CustomTextField({
    super.key,
    this.labelText,
    this.hintText,
    this.controller,
    this.focusNode,
    this.decoration,
    this.keyboardType,
    this.textInputAction,
    this.obscureText = false,
    this.maxLines = 1,
    this.minLines,
    this.readOnly = false,
    this.onChanged,
    this.validator,
    this.onTap,
    this.enabled = true,
    this.prefixIcon,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      focusNode: focusNode,
      decoration: InputDecoration(
        contentPadding:
        const EdgeInsets.symmetric(
            horizontal: 12, vertical: 10),
        labelText: labelText,
        hintText: hintText,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: Theme.of(context).primaryColor,
            width: 2,
          ),
        ),
      ),
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      obscureText: obscureText,
      maxLines: obscureText ? 1 : maxLines,
      minLines: minLines,
      readOnly: readOnly,
      onChanged: onChanged,
      validator: validator,
      onTap: onTap,
      enabled: enabled,
    );
  }
}



// IntlPhoneField(
// decoration: InputDecoration(
// hintText: 'Enter Phone number',
// hintStyle: TextStyle(color: Colors.grey),
// filled: true,
// fillColor: const Color(
// 0xFFF2F2F2), // light grey background
// contentPadding:
// const EdgeInsets.symmetric(
// horizontal: 12, vertical: 10),
// border: OutlineInputBorder(
// borderSide: BorderSide.none,
// borderRadius: BorderRadius.circular(14),
// ),
// ),
// validator: (value) {
// if (value == null) {
// return 'Please enter your phone number';
// }
// return null;
// },
// dropdownIconPosition: IconPosition.trailing,
// flagsButtonPadding: const EdgeInsets.only(
// left: 8, right: 8),
// initialCountryCode: 'IN',
// showDropdownIcon: true,
// disableLengthCheck: true,
// onChanged: (phone) {
// print(phone
//     .completeNumber); // For debugging
// },
// ),