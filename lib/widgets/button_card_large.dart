import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constance/screen_size.dart';



class BtnCardLarge extends StatelessWidget {
  final FaIcon? icon;
  final Color color;
  final Color fontColor;
  final void Function()? function;
  final String label;

  const BtnCardLarge(
      {super.key,
        required this.function,
        required this.label,
        required this.color,
        required this.fontColor,
        this.icon});

  @override
  Widget build(BuildContext context) {
    if (icon == null) {
      return SizedBox(
        width: (ScreenSize.width! - 60),
        height: 50,
        child: ElevatedButton(
          onPressed: function,
          style: ElevatedButton.styleFrom(
              backgroundColor: color,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5))),
          child: Text(
            label,
            style: TextStyle(fontSize: 15, color: fontColor),
          ),
        ),
      );
    } else {
      return SizedBox(
        width: (ScreenSize.width! - 60),
        height: 55,
        child: ElevatedButton.icon(
          onPressed: function,
          style: ElevatedButton.styleFrom(
              backgroundColor: color,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5))),
          icon: icon!,
          label: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                width: 20,
              ),
              Text(
                label,
                style: TextStyle(fontSize: 15, color: fontColor),
              ),
            ],
          ),
        ),
      );
    }
  }
}