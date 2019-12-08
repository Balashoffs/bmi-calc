import 'package:flutter/cupertino.dart';

import 'constants.dart';
import 'reusable_widget.dart';
import 'package:flutter/material.dart';

class HeightWidget extends StatefulWidget {
  @override
  _HeightWidgetState createState() => _HeightWidgetState();
}

class _HeightWidgetState extends State<HeightWidget> {
  int height = 160;

  @override
  Widget build(BuildContext context) {
    return ReusableCard(
      colour: kActiveCardColour,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('HEIGHT', style: kTextStyle18,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: <Widget>[
              Text(height.toString(), style: kTextStyle50,),
              Text('cm', style: kTextStyle18,),
            ],
          ),
          SliderTheme(
            data: SliderTheme.of(context).copyWith(
              activeTrackColor: Colors.white,
              inactiveTrackColor: Color(0xff8d8e98),
              thumbColor: Color(0xffed1555),
              overlayColor: Color(0x29ed1555),
              thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
              overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
            ),
            child: Slider(
              onChanged: (double newValue){
                setState(() {
                  height = newValue.round();
                });
              },
              value: height.toDouble(),
              max: 220,
              min: 120,
            ),
          )
        ],
      ),
    );
  }
}
