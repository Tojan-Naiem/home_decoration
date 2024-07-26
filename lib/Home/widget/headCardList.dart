import 'package:flutter/material.dart';
import 'package:home_decoration/Home/models/HomeComponent.dart';
import 'package:home_decoration/Home/widget/card.dart';

class HeadCardList extends StatefulWidget {
  const HeadCardList({super.key});

  @override
  State<HeadCardList> createState() => _HeadCardListState();
}

class _HeadCardListState extends State<HeadCardList> {
  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.only(left: 10),
            child:  Container(
              width: double.infinity,
              height: 180,
              child: ListView.builder(
                itemCount: HomeComponent.homeComponent.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context,index){
                  return CardHome(
                    HomeComponent.homeComponent[index].title!,
                    HomeComponent.homeComponent[index].image!
                    );
                }
                ),
            )
           

            )
           ;
  }
}