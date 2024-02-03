import 'package:flutter/material.dart';
class DoctorFavourite extends StatelessWidget {
  const DoctorFavourite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8,left: 8,bottom: 8),
      child: Row(children: [
        ClipRRect(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(10),
            bottomRight: Radius.circular(10)
          ),
          child:Image.asset('assets/images/img_2.png',
            height: 90,width: 105,
            fit: BoxFit.fill,
          ),),
        Container(
          height: 90,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              bottomLeft: Radius.circular(12)
            )
          ),
          child: Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.person,size: 20,),
                    Padding(
                        padding: EdgeInsets.only(right: 10)),
                    Text("دكتور على محمد"),
                    Container(
                      margin: EdgeInsets.only(right: 90,left: 10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(3)
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.star),
                          Text("4.1"),
                        ],
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                  Icon(Icons.calendar_today_outlined,size: 15,),
                    Text("قلب واوعيه دمويه")
                ],),
                Row(
                  children: [
                    Icon(Icons.location_on_sharp,size: 20,),
                    Text("13-شارع خليل-المعادى")

                ],),
              ],
            ),
          ),
        )
      ],),
    );
  }
}
