import 'package:flutter/material.dart';
import 'package:testa/widgets/DoctorCard.dart';
import 'package:testa/widgets/Doctor_Card_Favourite.dart';
import 'package:testa/widgets/Doctor_Favourite.dart';
class StoreFavourities extends StatelessWidget {
  const StoreFavourities({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(
            title: Text("المفضله"),
            centerTitle: true,
            leading: IconButton(
                onPressed: (){},
                icon: Icon(Icons.arrow_forward_ios)),
          ),
          body:CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Text("اخر المفضلات"),
                ),
              ),
              SliverToBoxAdapter(
                child:SizedBox(
                  height: 200,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                      itemBuilder:(context,index)=>DoctorCardFavourite(),
                    itemCount: 5,
                  ),
                ) ,
              ),
              SliverToBoxAdapter(
                child:Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Text("المفضلات السابقه"),
                ) ,
              ),
              SliverToBoxAdapter(
                child: ListView.builder(
                  shrinkWrap: true,
                    physics:const NeverScrollableScrollPhysics(),
                    itemBuilder:(context,index)=>DoctorFavourite(),
                  itemCount: 20,
                ),
              )
            ],
          )
        ));
  }
}
