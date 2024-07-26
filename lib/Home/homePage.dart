import 'package:flutter/material.dart';
import 'package:home_decoration/Home/models/HomeComponent.dart';
import 'package:home_decoration/Home/widget/bar.dart';
import 'package:home_decoration/Home/widget/card.dart';
import 'package:home_decoration/Home/widget/headCardList.dart';
import 'package:home_decoration/Home/widget/titleType.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
    return Scaffold(
         backgroundColor: Colors.white,
         body: Column( 
          children: [ 
            const SizedBox(height: 50,),
            Bar(),
            const SizedBox(height: 20,),
            HeadCardList(),
            Padding(padding: const EdgeInsets.only(top: 20,left: 20),
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
            
            )
          ],
         ),
    );
  }
}