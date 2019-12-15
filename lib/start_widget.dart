import 'package:bmi_app/height_widget.dart';
import 'package:flutter/cupertino.dart';

import 'reusable_widget.dart';
import 'roundbuttonicon.dart';
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

  int height = 60;
  int age = 23;

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
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('HEIGHT', style: kTextStyle18,),
                          Text(height.toString(), style: kTextStyle50,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RoundButtonIcon(
                                icon: FontAwesomeIcons.minus,
                                onPressed: (){
                                  setState(() {
                                    height--;
                                  });
                                },
                              ),
                              SizedBox(width: 10.0,),
                              RoundButtonIcon(
                                icon: FontAwesomeIcons.plus,
                                onPressed: (){
                                  setState(() {
                                    height++;
                                  });
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      colour: kActiveCardColour,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('AGE', style: kTextStyle18,),
                          Text(age.toString(), style: kTextStyle50,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RoundButtonIcon(
                                icon: FontAwesomeIcons.minus,
                                onPressed: (){
                                  setState(() {
                                    age--;
                                  });
                                },
                              ),
                              SizedBox(width: 10.0,),
                              RoundButtonIcon(
                                icon: FontAwesomeIcons.plus,
                                onPressed: (){
                                  setState(() {
                                    age++;
                                  });
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, '/calculate');
              },
              child: Center(
                child: Container(
                  color: kBottomContainerColor,
                  margin: EdgeInsets.only(top: 10.0),
                  width: double.infinity,
                  height: kBottomContainerHeight,
                  child: Text('CALCULATE', style: kTextStyle25),
                ),
              ),
            )
          ],
        ));
  }
}
