import 'package:flutter/material.dart';
class Bubble extends StatelessWidget {
  const Bubble({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10,left: 10),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(child: Divider(thickness: 2,)),
              Text("الاحد 8/10"),
              Expanded(child: Divider(thickness: 2,)),
            ],
          ),
          Directionality(
            textDirection: TextDirection.rtl,
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(16)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text("الدواء جاهز للاستلام يرجي اخذ ال QR كود اسكرين لاستلام الدواء و شكرا لتعاملكم معانا صيدليه العزبي"),
                  Text("4:50م")
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
