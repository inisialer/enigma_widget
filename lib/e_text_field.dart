import 'package:flutter/material.dart';

class MainTextField extends StatelessWidget {
  const MainTextField(
      {super.key,
      this.hintText,
      this.suffixIcon,
      this.readOnly,
      this.enabled,
      this.onTap,
      this.minLines = 1});
  final String? hintText;
  final Widget? suffixIcon;
  final bool? readOnly;
  final bool? enabled;
  final int? minLines;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      minLines: minLines,
      maxLines: 5,
      enabled: enabled,
      onTap: onTap,
      readOnly: readOnly ?? false,
      style: TextStyle(
        color: Colors.grey[800],
      ),
      decoration: InputDecoration(
        filled: true,
        fillColor: enabled == false ? Colors.grey : Colors.white,
        suffixIcon: suffixIcon,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        isDense: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        hintText: hintText ?? "Masukkan password kamu",
        hintStyle: TextStyle(
          color: Colors.grey[600],
        ),
      ),
      validator: (value) {
        if (value == null || value == "") {
          return "This field is required";
        }
        return null;
      },
    );
  }
}
