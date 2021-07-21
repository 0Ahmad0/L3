import 'package:flutter/material.dart';
import '../constants/const.dart';
class BuildTextFiled extends StatelessWidget {
  const BuildTextFiled({
    Key key,
    @required this.size, this.text, this.icon,
  }) : super(key: key);

  final Size size;
  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: size.width * 0.1
      ),
      padding: EdgeInsets.symmetric(
          horizontal: size.width * 0.1,
          vertical: 5.0
      ),
      decoration: BoxDecoration(
          border: Border.symmetric(
              horizontal: BorderSide(color: KColor2)
          )
      ),
      child: TextFormField(
        style: TextStyle(
          color: KColor2
        ),
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: text,
          fillColor: KColor2,
          hintStyle: TextStyle(
              fontSize: size.width * 0.045,
              color: KColor2
          ),
          prefixIcon: Icon(icon,color: KColor2,)
        ),
      ),
    );
  }
}
