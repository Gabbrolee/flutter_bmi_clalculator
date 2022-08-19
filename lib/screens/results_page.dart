import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/component/bottom_button.dart';
import 'package:flutter_bmi_calculator/constant.dart';
import 'package:flutter_bmi_calculator/component/reusable_card.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({required this.bmiResult, required this.interpretation, required this.resultText});
  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
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
                   "Your Result",
                 style: kTitleTextStyle,
               )
              )
          ),
          Expanded(
             flex: 5,
              child: ReusableCard(
                color: kActiveCardColor,
                onTap: () {},
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
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
                      style: kBodyTextStyle,
                      textAlign: TextAlign.center,
                    ),
                    BottomButton(
                        title: "RE-CALCULATE",
                        onTap: (){
                          Navigator.pop(context);
                        }
                    )

                  ],
                ),)
          )
        ],
      )
    );
  }
}
