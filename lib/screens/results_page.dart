import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/reuseable_card.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: titleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Reuseable(
              color: activeCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Normal',
                    style: resultTextStyle,
                  ),
                  Text(
                    '10.3',
                    style: bmiTextStyle,
                  ),
                  Text(
                    'Your BMI result is quite low, You should eat more.',
                    textAlign: TextAlign.center,
                    style: bodyTextStyle,
                  ),
                  BottomButton(
                    buttonTitle: 'RE-CALCULATE',
                    onTap: () => {Navigator.pop(context)},
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
