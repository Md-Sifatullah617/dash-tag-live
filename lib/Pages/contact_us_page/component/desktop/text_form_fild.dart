import 'package:dash_and_tag_web_site/Utils/All_Colors/all_colors.dart';
import 'package:flutter/material.dart';

class TextFormFildWidget extends StatelessWidget {

  final String? hintText;
  final String? labelText;
  final int? maxLine;
  final TextEditingController? controller;
  final FormFieldValidator<String>? validator;

  const TextFormFildWidget({super.key,

    this.hintText,
    this.maxLine,
    this.labelText,
    this.controller,
    this.validator,

  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLine,
      controller: controller,
      validator: validator,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        border: OutlineInputBorder(
          borderSide: const BorderSide(
            color: ColorManager.nutMegColor,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: ColorManager.nutMegColor,
          ),
          borderRadius: BorderRadius.circular(10)
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: ColorManager.nutMegColor,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
