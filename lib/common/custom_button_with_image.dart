import 'package:flutter/material.dart';
import 'package:ui/common/textstyles.dart';

class CustomButtonWithImage extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final Color textColor;
  final double borderRadius;
  final Color color;
  final String imageAsset;

   CustomButtonWithImage({Key key, this.onPressed, this.text, this.textColor=Colors.black, this.borderRadius, this.color, this.imageAsset}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160,
      height: 45,
          child: RaisedButton(
        onPressed: onPressed,
        color: color,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(borderRadius)),
        textColor: textColor,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset(imageAsset,width: 20,height: 20,),
            Text(text,style: TextStyles.buttonTextStyle,),
          ],
        ),
      ),
    );
  }
}