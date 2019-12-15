import 'package:flutter/material.dart';

class RoundButtonIcon extends StatelessWidget {

  final IconData icon;
  final Function onPressed;

  RoundButtonIcon({@required this.icon, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon, color: Colors.white,),
      onPressed: onPressed,
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        height: 42.0,
        width: 42.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xff4c4f5e),
    );
  }
}
