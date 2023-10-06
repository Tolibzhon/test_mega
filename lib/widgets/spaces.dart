import 'package:flutter/material.dart';

extension Sizes on BuildContext {
  get width => MediaQuery.of(this).size.width;
  get height => MediaQuery.of(this).size.height;
  double get bottom => MediaQuery.of(this).viewInsets.bottom;
}
