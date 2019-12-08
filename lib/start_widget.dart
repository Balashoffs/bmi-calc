import 'package:bmi_app/height_widget.dart';
import 'package:flutter/cupertino.dart';

import 'reusable_widget.dart';
import 'sx_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';

enum GenderType{
  male,
  female
}

class StartWidget extends StatefulWidget {
  @override
  _StartWidgetState createState() => _StartWidgetState();
}

class _StartWidgetState extends State<StartWidget> {

  GenderType type;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      onPress: (){
                        setState(() {
                          type = GenderType.male;
                        });
                      },
                      colour: type == GenderType.male ? kActiveCardColour : kInActiveCardColour,
                      child: SXWidget(
                        sxIcon: FontAwesomeIcons.mars,
                        sxType: 'MALE',
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      onPress: (){
                        setState(() {
                          type = GenderType.female;
                        });
                      },
                      colour: type == GenderType.female ? kActiveCardColour : kInActiveCardColour,
                      child: SXWidget(
                        sxIcon: FontAwesomeIcons.venus,
                        sxType: "FAMALE",
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: HeightWidget(),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      colour: kActiveCardColour,
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      colour: kActiveCardColour,
                    ),
                  )
                ],
              ),
            ),
            Container(
              color: kBottomContainerColor,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: kBottomContainerHeight,
            )
          ],
        ));
  }
}
