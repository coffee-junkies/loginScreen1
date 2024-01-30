import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TextFieldInputs extends StatefulWidget {
  final String labelText;
  final TextInputType textInputType;
  final bool obscureText;
  final bool password;
  final FaIcon? suffixIcon;

  const TextFieldInputs(
      {super.key,
      required this.labelText,
      required this.textInputType,
      required this.obscureText,
      required this.suffixIcon, required this.password});

  @override
  State<TextFieldInputs> createState() => _TextFieldInputsState();
}

class _TextFieldInputsState extends State<TextFieldInputs> {

  late String labelText;
  late TextInputType textInputType;
  late bool obscureText;
  FaIcon? suffixIcon;
  bool showPassword = false;
  @override
  void initState() {
    labelText = widget.labelText;
    textInputType = widget.textInputType;
    obscureText = widget.obscureText;
    suffixIcon = widget.suffixIcon;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: const Color(0xff075A7F)),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: TextField(
          style: const TextStyle(color: Colors.black87),
          keyboardType: textInputType,
          obscureText: obscureText,
          decoration: suffixIcon == null
              ? InputDecoration(
                  contentPadding: EdgeInsets.zero,
                  border: InputBorder.none,
                  labelText: labelText,
                  labelStyle: const TextStyle(color: Colors.grey),
                )
              : InputDecoration(
                  contentPadding: EdgeInsets.zero,
                  suffixIcon: IconButton(
                    onPressed: widget.password ? _isPassword : null,
                    icon: suffixIcon!,
                  ),
                  border: InputBorder.none,
                  labelText: labelText,
                  labelStyle: const TextStyle(color: Colors.grey),
                ),
        ),
      ),
    );
  }

  _isPassword(){
    setState(() {
      if(showPassword == false){
        showPassword = true;
        suffixIcon = const FaIcon(FontAwesomeIcons.eyeSlash);
        obscureText = false;
      }else{
        showPassword = false;
        suffixIcon = const FaIcon(FontAwesomeIcons.eye);
        obscureText = true;
      }
    });
  }
}
