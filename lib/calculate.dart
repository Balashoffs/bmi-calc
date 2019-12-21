import 'package:flutter/material.dart';

import 'constants.dart';

class Calculate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 9,
              child: Container(
                child: Text('Text', style: kTextStyle50,),
              ),
            ),
            Expanded(
              flex: 1,
              child: GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, '/');
                },
                child: Container(
                  width: double.infinity,
                  color: kBottomContainerColor,
                  child: Text('New Calculate', style: kTextStyle18,),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
