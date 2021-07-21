import 'package:flutter/material.dart';
import 'package:login_ui_3a/constants/const.dart';

class BuildTextButton extends StatelessWidget {
  const BuildTextButton({
    Key key, @required this.size, this.text, this.onTap,
  }) : super(key: key);
  final Size size;
  final String text;
  final Function onTap;


  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: onTap, child: Text(text,style: TextStyle(
      fontSize: size.width * 0.05,
      fontWeight: FontWeight.w300,
      color: KColor2
    ),));
  }
}
