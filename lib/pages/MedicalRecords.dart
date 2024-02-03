import 'package:flutter/material.dart';
import 'package:testa/widgets/AnotherDetials.dart';
import 'package:testa/widgets/DoctorReservation.dart';
import 'package:testa/widgets/Reports.dart';
class MedicalRecords extends StatefulWidget {
  const MedicalRecords({Key? key}) : super(key: key);

  @override
  State<MedicalRecords> createState() => _MedicalRecordsState();
}

class _MedicalRecordsState extends State<MedicalRecords> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            title: Text("سجلاتى الطبيه"),
            centerTitle: true,
            leading: Icon(Icons.arrow_forward_ios),
            bottom: TabBar(
              dividerHeight: 5,
                indicatorWeight: 5,
                tabs: [
              Tab(child: Text("حجوزات الدكاتره"),),
              Tab(child: Text("التقرير"),),
              Tab(child: Text("تفاصيل اخرى"),)
            ]),
          ),
          body: TabBarView(
              children: [
                DoctorReservation(),
                Reports(),
                AnotherDetails(),
              ]),
        ),
      ),
    );
  }
}
