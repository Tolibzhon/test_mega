import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test_mega/theme/app_colors.dart';
import 'package:test_mega/theme/app_text_styles.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    super.key,
    this.onChanged,
    required this.hintText,
    this.controller,
    this.inputFormatters,
    this.radius = 16,
    this.suffix,
    this.maxLines = 1,
    this.borderColor,
    this.textAlign,
    this.style,
    this.keyboard,
    this.bgColor,
    this.prefix,
  });
  final Function(String)? onChanged;
  final String hintText;
  final List<TextInputFormatter>? inputFormatters;
  final TextEditingController? controller;
  final Widget? suffix;
  final Widget? prefix;
  final double radius;
  final int maxLines;
  final Color? borderColor;
  final Color? bgColor;
  final TextAlign? textAlign;
  final TextStyle? style;
  final TextInputType? keyboard;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: widget.keyboard,
      textAlign: widget.textAlign ?? TextAlign.start,
      maxLines: widget.maxLines,
      style: widget.style ??
          AppTextStyles.s15W600(
            color: AppColors.lightGrey,
          ),
      controller: widget.controller,
      inputFormatters: widget.inputFormatters,
      onChanged: widget.onChanged,
      decoration: InputDecoration(
        filled: true,
        fillColor: widget.bgColor ?? AppColors.color0B1E2DBg2,
        // suffixIcon: widget.suffix,
        prefix: widget.prefix,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.radius),
          borderSide: BorderSide(
            width: 1,
            color: widget.borderColor ?? Colors.grey,
          ),
        ),
        hintText: widget.hintText,
        hintStyle: AppTextStyles.s16W400(color: AppColors.lightGrey),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.radius),
          borderSide: BorderSide(
            width: 2,
            color: widget.borderColor ?? AppColors.color0B1E2DBg2,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.radius),
          borderSide: BorderSide(
            width: 2,
            color: widget.borderColor ?? AppColors.color0B1E2DBg2,
          ),
        ),
      ),
    );
  }
}
