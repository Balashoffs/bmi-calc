import 'package:bmi_app/elements/bottom_button.dart';
import 'package:bmi_app/elements/reusable_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class Calculate extends StatelessWidget {

  final String getBMI;
  final String getResult;
  final String getInterpretation;


  Calculate({@required this.getBMI, @required this.getResult, @required this.getInterpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.center,
                child: Text(
                  'Your results',
                  style: kTextStyle50,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                colour: kActiveCardColour,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      getResult,
                      style: kResultTextStyle,
                    ),
                    Text(
                      getBMI,
                      style: kBMITextStyle,
                    ),
                    Text(
                      getInterpretation,
                      style: kBodyTextStyle,
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
            BottomButton(
              onTap: () {
                Navigator.pop(context);
              },
              text: "RE-CALCULATE",
            ),
          ],
        ),
      ),
    );
  }
}
