import 'package:flutter/material.dart';
import 'package:testa/widgets/Chart.dart';
class Weight extends StatelessWidget {
  const Weight({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15,top: 20,left: 15),
      child: ListView(
        children: [
          Row(
            children: [
              Text("بعد النشاط"),
              Padding(
                  padding: EdgeInsets.only(right: 5),
                child: CircleAvatar(
                  backgroundColor: Colors.black87,
                  radius: 5,
                ),
              ),
              Padding(padding:EdgeInsets.only(right:50) ),
              Text("قبل النشاط"),
              Padding(
                padding: EdgeInsets.only(right: 5),
                child: CircleAvatar(
                  backgroundColor: Colors.black87,
                  radius: 5,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child:chart(0, 9, 50, 90, "اليوم", "الوزن"),
          ),
        ],
      ),
    );
  }
}