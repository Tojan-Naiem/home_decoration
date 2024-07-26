import 'package:flutter/material.dart';
import 'package:home_decoration/Home/widget/titleType.dart';

class TitleList extends StatefulWidget {
  const TitleList({super.key});

  @override
  State<TitleList> createState() => _TitleListState();
}

class _TitleListState extends State<TitleList> {
    List titles=[
   ['Populor',true],
   ['New',false],
   ['Best Silling',false],
   ['For you',false]
  ];
  void _selectedItem(int index){
    setState(() {
      for(int i=0;i<4;i++)
      titles[i][1]=false;
      titles[index][1]=true;
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Padding(padding: const EdgeInsets.only(top: 20,left: 20),
            child: Container( 
              width: double.infinity,
              height: 60,
              child: ListView.builder(
                itemCount: titles.length,
                scrollDirection: Axis.horizontal,
                itemBuilder:(context,index){
                  return TitleType(
                   titles[index][0],
                   titles[index][1],
                   (){
                   _selectedItem(index);

                   }

                  );
                }
                 ),
            ),
            
            );
  }
}