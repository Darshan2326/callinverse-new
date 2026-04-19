import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final String hint;
  final bool isPassword;
  final bool isRequired;
  final TextInputType keyboardType;
  final int maxLines;
  final TextEditingController? controller;
  final String? Function(String?)? validator;

  const CustomTextField({
    super.key,
    required this.hint,
    this.isPassword = false,
    this.isRequired = false,
    this.keyboardType = TextInputType.text,
    this.maxLines = 1,
    this.controller,
    this.validator,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      keyboardType: widget.keyboardType,
      maxLines: widget.isPassword ? 1 : widget.maxLines,
      obscureText: widget.isPassword ? isObscure : false,

      /// ✅ Default validation (required field)
      validator: widget.validator ??
          (widget.isRequired
              ? (value) {
                  if (value == null || value.trim().isEmpty) {
                    return "${widget.hint} is required";
                  }
                  return null;
                }
              : null),

      decoration: InputDecoration(
        hintText: widget.hint,
        filled: true,
        fillColor: const Color(0xFFEDEDED),

        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 18,
        ),

        /// 🔒 Password toggle
        suffixIcon: widget.isPassword
            ? IconButton(
                icon: Icon(
                  isObscure ? Icons.visibility_off : Icons.visibility,
                ),
                onPressed: () {
                  setState(() {
                    isObscure = !isObscure;
                  });
                },
              )
            : null,

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}