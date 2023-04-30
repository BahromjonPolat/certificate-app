/*

  Created by: Bakhromjon Polat
  Created on: Apr 30 2023 16:50:30
  Github:   https://github.com/BahromjonPolat
  Leetcode: https://leetcode.com/BahromjonPolat/
  LinkedIn: https://linkedin.com/in/bahromjon-polat
  Telegram: https://t.me/BahromjonPolat

  Documentation: 

*/

import 'package:certificate/core/core.dart';
import 'package:certificate/view/widgets/certificate_list_widget.dart';
import 'package:certificate/view/widgets/widgets.dart';
import 'package:common_models/common_models.dart';
import 'package:flutter/material.dart';

class AutocompleteWidget extends StatelessWidget {
  final Iterable<CertificateModel> certificates;
  final TextEditingController controller;
  const AutocompleteWidget({
    super.key,
    required this.certificates,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Autocomplete(
      fieldViewBuilder: (
        context,
        textEditingController,
        focusNode,
        onFieldSubmitted,
      ) {
        return AppInputField(
          focusNode: focusNode,
          controller: textEditingController,
          validator: AppValidators.general,
        );
      },
      onSelected: (option) {
        controller.text = option.uniqueCode;
      },
      optionsBuilder: (textEditingValue) {
        final query = textEditingValue.text.trim();
        if (query.isEmpty) {
          return const Iterable<CertificateModel>.empty();
        }
        return certificates.where(
          (element) => element.uniqueCode.startsWith(query),
        );
      },
      displayStringForOption: (option) => option.uniqueCode,
      optionsViewBuilder: (context, onSelected, options) {
        return CertificateListWidget(
          certificates: options.toList(),
          onSelected: onSelected,
        );
      },
    );
  }
}
