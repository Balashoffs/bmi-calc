import 'package:flutter/material.dart';
import 'constants.dart';

class SXWidget extends StatelessWidget {
  final IconData sxIcon;
  final String sxType;

  SXWidget({@required this.sxIcon, this.sxType});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          sxIcon,
          size: 80.0,
          color: Colors.white,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          sxType,
          style: kTextStyle18,
        ),
      ],
    );
  }
}