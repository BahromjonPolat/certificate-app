/*

  Created by: Bakhromjon Polat
  Created on: Mar 11 2023 22:58:51
  Github:   https://github.com/BahromjonPolat
  Leetcode: https://leetcode.com/BahromjonPolat/
  LinkedIn: https://linkedin.com/in/bahromjon-polat
  Telegram: https://t.me/BahromjonPolat

  Documentation: 

*/
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// ignore: must_be_immutable
class AppInputField extends StatelessWidget {
  TextEditingController? controller;
  String? hint;
  Widget? suffixIcon;
  List<TextInputFormatter>? formatters;
  TextInputType? keyboardType;
  bool readOnly;
  TextInputAction action;
  TextCapitalization capitalization;
  VoidCallback? onTap;
  int maxLines;
  Color? fillColor;
  FormFieldValidator<String>? validator;
  IconData assetIcon = Icons.abc;
  bool obscureText;
  bool _withPrefix = false;
  FocusNode? focusNode;

  AppInputField({
    super.key,
    this.controller,
    this.hint,
    this.suffixIcon,
    this.formatters,
    this.keyboardType,
    this.readOnly = false,
    this.action = TextInputAction.next,
    this.capitalization = TextCapitalization.words,
    this.onTap,
    this.maxLines = 1,
    this.validator,
    this.fillColor,
    this.obscureText = false,
    this.focusNode,
  });

  AppInputField.withPrefix({
    required this.assetIcon,
    super.key,
    this.controller,
    this.hint,
    this.suffixIcon,
    this.formatters,
    this.keyboardType,
    this.readOnly = false,
    this.action = TextInputAction.next,
    this.capitalization = TextCapitalization.words,
    this.onTap,
    this.maxLines = 1,
    this.validator,
    this.fillColor,
    this.obscureText = false,
    this.focusNode,
  }) {
    _withPrefix = true;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      textInputAction: action,
      textCapitalization: capitalization,
      inputFormatters: formatters,
      keyboardType: keyboardType,
      readOnly: readOnly,
      onTap: onTap,
      maxLines: maxLines,
      obscureText: obscureText,
      focusNode: focusNode,
      decoration: InputDecoration(
        hintText: hint,
        fillColor: fillColor,
        filled: true,
        suffixIcon: suffixIcon,
        prefixIcon: _withPrefix ? Icon(assetIcon) : null,
      ),
    );
  }
}
