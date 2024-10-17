import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/bottom_button.dart';


class ResultPage extends StatelessWidget {
  final String resultText;
  final String bmiResult;
  final String interpretation;

  const ResultPage({super.key, required this.resultText, required this.bmiResult, required this.interpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Container(
        padding: EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Text(
                'YOUR RESULT',
                style: kTitleTextStyle,
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                  colour: kActiveColor,
                  cardChild: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        resultText.toUpperCase(),
                        style: kResultTextStyle,
                      ),
                      Text(
                        bmiResult,
                        style: kBMITextStyle,
                      ),
                      Text(
                        interpretation,
                        textAlign: TextAlign.center,
                        style: kResultSentenceTextStyle,
                      ),
                    ],
                  ),
                  onPress: () {}),
            ),
            Expanded(child: BottomButton(onTap: (){
              Navigator.pop(context);
            }, bodyTitle: 'RE-CALCULATE'))
          ],
        ),
      ),
    );
  }
}
