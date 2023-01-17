import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.label,
    required this.controller,
    required this.validator,
    required this.isLoading,
    this.textInputType = TextInputType.text,
  });

  final String label;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final bool isLoading;
  final TextInputType textInputType;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 12,
          ),
        ),
        TextFormField(
          keyboardType: textInputType,
          enabled: !isLoading,
          validator: validator,
          controller: controller,
          // ignore: avoid_bool_literals_in_conditional_expressions
          obscureText: label == 'PASSWORD' ? true : false,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
          ),
        ),
      ],
    );
  }
}
