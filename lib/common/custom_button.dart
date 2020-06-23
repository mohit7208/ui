import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final Color textColor;
  final double borderRadius;
  final Color color;

  CustomButton(
      {Key key,
      this.onPressed,
      this.text,
      this.textColor = Colors.black,
      this.borderRadius,
      this.color})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
          child: RaisedButton(
        onPressed: onPressed,
        color: color,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius)),
        textColor: textColor,
        child: Text(text,style: TextStyle(fontSize: 20,letterSpacing: 3.0),),
      ),
    );
  }
}
