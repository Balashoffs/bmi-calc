import 'package:flutter/cupertino.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {

  Function onTap;
  String text;

  BottomButton({@required this.onTap, @required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kBottomContainerHeight,
        child: Center(child: Text(text, style: kTextStyle25)),
      ),
    );
  }
}