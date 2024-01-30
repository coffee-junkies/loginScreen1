import 'dart:ui';

import 'package:flutter/material.dart';

import '../constance/screen_size.dart';


class BlurContainer extends StatelessWidget {
  final Widget widget;
  const BlurContainer({super.key, required this.widget});

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
        child: SizedBox(
          width: ScreenSize.width! - 20,
          height: 500,
          child: widget,
        ),
      ),
    );
  }
}
