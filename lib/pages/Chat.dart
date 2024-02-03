import 'package:flutter/material.dart';
import 'package:testa/widgets/Bubble.dart';
class Chat extends StatelessWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 130),
            child: Icon(Icons.call),
          ),
          Text("الاشعارات"),
          Padding(
            padding: const EdgeInsets.only(right: 10,left: 130),
            child: Icon(Icons.arrow_forward_ios),
          ),
        ],
      ),
      body: ListView.builder(
          itemBuilder: (context,index)=>Bubble(),
        itemCount: 5,
      ),
    );
  }
}
