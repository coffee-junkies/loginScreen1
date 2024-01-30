import 'package:flutter/material.dart';

class ScreenSize{
  static double? width;
  static double? height;
  final Size size;
  ScreenSize({required this.size}) {
    _initSize();
  }

  _initSize(){
     width = size.width;
     height = size.height;
  }
}