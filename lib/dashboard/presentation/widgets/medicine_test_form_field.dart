import 'package:flutter/material.dart';

class MedicineTestFormField extends StatelessWidget {
  const MedicineTestFormField({
    super.key,
    required this.isLoading,
    required this.initialValue,
    required this.onChanged,
    this.validator,
    required this.isNumber,
    required this.label,
  });

  final bool isLoading;
  final String initialValue;
  final void Function(String) onChanged;
  final String? Function(String?)? validator;
  final bool isNumber;
  final String label;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: !isLoading,
      initialValue: initialValue,
      style: Theme.of(context).textTheme.labelLarge,
      onChanged: onChanged,
      validator: validator,
      keyboardType: isNumber ? TextInputType.number : null,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        hintText: label,
        labelText: label,
      ),
    );
  }
}
