import 'package:flutter/material.dart';
import 'package:testa/widgets/ChartSteps.dart';
class NumOfSteps extends StatelessWidget {
  const NumOfSteps({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Image.asset('assets/images/img_3.png',width: 94,height: 120,),
            ),
            Padding(
                padding: EdgeInsets.only(right: 10)
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15,left: 20),
              child: Column(
                children: [
                  Text("199 من الخطوات "),
                  Text("الهدف 8000 من الخطوات"),
                  Container(
                    padding: EdgeInsets.only(top: 20,right: 30),
                    width: 250,
                    child: Text("لم تحقق حته ربع هدفك اليوم انت تعلم ان الرياضه ضروريه و مهمه لاجلك"),
                  )
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 212,
            child: ChartSteps([3.0,5.0,8.0,10.0,12.0,14.0,16.0,18.0,20.0])
        ),
        Text("اليوم",textAlign: TextAlign.center,),
      ],
    );
  }
}