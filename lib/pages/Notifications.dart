import 'package:flutter/material.dart';
import 'package:testa/widgets/Notification_Details.dart';
import 'package:testa/widgets/custom_text_field.dart';

class Notifications extends StatelessWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 130),
            child: Icon(Icons.notifications),
          ),
          Text("الاشعارات"),
          Padding(
            padding: const EdgeInsets.only(right: 10,left: 130),
            child: Icon(Icons.arrow_forward_ios),
          ),
        ],
      ),
      body:CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: Padding(
            padding: const EdgeInsets.only(right: 10,left: 10),
            child: CustomTextField(
              centerTitle: true,fillColor: Colors.white,
              hint: "بحث",
            ),
          )),
          SliverToBoxAdapter(
            child: ListView.builder(
              physics: NeverScrollableScrollPhysics(),
                itemBuilder:(context,index)=>NotificationDetials(),
              itemCount: 10,
              shrinkWrap: true,
            ),
            )

        ],
      ) ,
    );
  }
}
