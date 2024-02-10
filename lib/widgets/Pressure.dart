import 'package:flutter/material.dart';
import 'package:testa/widgets/Chart.dart';
class Pressure extends StatelessWidget {
  const Pressure({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15,top: 20,left: 15),
      child: ListView(
        children: [
          Row(
            children: [
              Text("الانقباض"),
              Padding(
                padding: const EdgeInsets.only(right: 5,left: 70),
                child: CircleAvatar(
                  backgroundColor: Colors.black87,
                  radius: 5,
                ),
              ),
              Text("الانبساط"),
              Padding(
                padding: const EdgeInsets.only(right: 5,left: 70),
                child: CircleAvatar(
                  backgroundColor: Colors.black87,
                  radius: 5,
                ),
              ),
              Text("ضربات القلب"),
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: CircleAvatar(
                  backgroundColor: Colors.black87,
                  radius: 5,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: chart(1, 10, 60, 150,"اليوم", "الضغط"),
          ),
        ],
      ),
    );
  }
}