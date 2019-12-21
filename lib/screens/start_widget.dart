import 'package:bmi_app/screens/calculate.dart';
import 'package:flutter/cupertino.dart';
import '../calculate_brain.dart';
import '../elements/bottom_button.dart';
import '../elements/reusable_widget.dart';
import '../elements/roundbuttonicon.dart';
import '../widgets/sx_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../constants.dart';

enum GenderType { male, female }

class StartWidget extends StatefulWidget {
  @override
  _StartWidgetState createState() => _StartWidgetState();
}

class _StartWidgetState extends State<StartWidget> {
  GenderType type;

  int weight = 60;
  int height = 120;
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
                      onPress: () {
                        setState(() {
                          type = GenderType.male;
                        });
                      },
                      colour: type == GenderType.male
                          ? kActiveCardColour
                          : kInActiveCardColour,
                      child: SXWidget(
                        sxIcon: FontAwesomeIcons.mars,
                        sxType: 'MALE',
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      onPress: () {
                        setState(() {
                          type = GenderType.female;
                        });
                      },
                      colour: type == GenderType.female
                          ? kActiveCardColour
                          : kInActiveCardColour,
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
              child: ReusableCard(
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
                        thumbShape: RoundSliderThumbShape(
                            enabledThumbRadius: 10.0),
                        overlayShape: RoundSliderOverlayShape(
                            overlayRadius: 20.0),
                      ),
                      child: Slider(
                        onChanged: (double newValue) {
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
              ),
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
                          Text(
                            'WEIGHT',
                            style: kTextStyle18,
                          ),
                          Text(
                            weight.toString(),
                            style: kTextStyle50,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RoundButtonIcon(
                                icon: FontAwesomeIcons.minus,
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              RoundButtonIcon(
                                icon: FontAwesomeIcons.plus,
                                onPressed: () {
                                  setState(() {
                                    weight++;
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
                          Text(
                            'AGE',
                            style: kTextStyle18,
                          ),
                          Text(
                            age.toString(),
                            style: kTextStyle50,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RoundButtonIcon(
                                icon: FontAwesomeIcons.minus,
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              RoundButtonIcon(
                                icon: FontAwesomeIcons.plus,
                                onPressed: () {
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
            BottomButton(
              onTap: () {
                CalculatorBrain calc = CalculatorBrain(
                    weight: weight, height: height);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Calculate(
                      getBMI: calc.getBMI(),
                      getResult: calc.getResult(),
                      getInterpretation: calc.getInterpretation(),
                    ),
                  ),
                );
              },
              text: 'CALCULATE',
            ),
          ],
        ));
  }
}
