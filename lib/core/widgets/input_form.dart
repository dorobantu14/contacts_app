import 'package:flutter/material.dart';

class InputForm extends StatelessWidget {
  final String labelText;
  final TextEditingController controller;
  final bool? obscureText;
  final Widget? suffixIcon;
  final ValueChanged? onChanged;
  final String? errorText;

  const InputForm({
    Key? key,
    required this.labelText,
    required this.controller,
    this.obscureText,
    this.suffixIcon,
    this.onChanged,
    this.errorText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onChanged: onChanged,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
        labelText: labelText,
        suffixIcon: suffixIcon,
        errorText: errorText,
      ),
      obscureText: obscureText ?? false,
    );
  }
}
