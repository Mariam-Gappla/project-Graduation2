import 'package:flutter/material.dart';
import 'package:testa/widgets/custom_button.dart';
import 'package:testa/widgets/custom_text_field.dart';

class PersonalDetails extends StatelessWidget {
  const PersonalDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text("تفاصيل الشخصيه"),
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.only(right: 10,left: 10),
          child: ListView(
            children: [
              Padding(padding:EdgeInsets.only(top: 20) ),
              CircleAvatar(
                radius: 50,
                child:ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image.asset("assets/images/Ellipse 4.jpg",height: 92,width: 92,fit: BoxFit.fill,),
                ) ,
              ),
              Padding(padding:EdgeInsets.only(top: 60) ),
              Text("الاسم يالكامل"),
             CustomTextField(fillColor: Colors.white,),
              Text("العنوان"),
              CustomTextField(fillColor: Colors.white,),
              Text("تاريخ الميلاد"),
              CustomTextField(fillColor: Colors.white,),
              Text("رقم التليفون"),
              CustomTextField(fillColor: Colors.white,),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: CustomButton(
                  text: "حفظ",
                  color: Colors.black87,
                  textcolor: Colors.white,
                  circular: 8,
                  width: 328,height: 48,

                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
