import 'package:flutter/material.dart';
import 'package:home_decoration/ProfilePage/accountPage.dart';
import 'package:home_decoration/Home/models/HomeComponent.dart';
import 'package:home_decoration/Home/models/item.dart';
import 'package:home_decoration/Home/widget/bar.dart';
import 'package:home_decoration/Home/widget/card.dart';
import 'package:home_decoration/Home/widget/drawer.dart';
import 'package:home_decoration/Home/widget/headCardList.dart';
import 'package:home_decoration/Home/widget/itemCard.dart';
import 'package:home_decoration/Home/widget/titleList.dart';
import 'package:home_decoration/Home/widget/titleType.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();


  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(
           key: _scaffoldKey,
      drawer:DrawerC(),
         floatingActionButton: FloatingActionButton(
          onPressed: (){},
          focusColor:  Color.fromARGB(255, 97, 194, 100),
          shape: CircleBorder(),
          backgroundColor:  Color.fromARGB(255, 97, 194, 100),
         child: Icon(Icons.add_shopping_cart,color: Colors.white,)),
         backgroundColor: Colors.white,
         body: SingleChildScrollView(
           child: Column( 
            children: [ 
              const SizedBox(height: 50,),
              iconG(),
              const SizedBox(height: 20,),
              HeadCardList(),
              TitleList(),
              Padding(
                padding: const EdgeInsets.all(25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween, 
                  children: [
                       Text('Have 24 products',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),),
                       Text('Show All',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 12),)
                  ],
                ),
              ),
              Container( 
                width: 400 ,
                height: 2000,
               
                child:  
                AnimationLimiter(
                  child: GridView.builder( 
                  itemCount: Item.items.length,
                  
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 50
                    ),
                  itemBuilder: (context,index){
                    return  AnimationConfiguration.staggeredGrid(
        position: index,
         columnCount: 2,
        duration: const Duration(milliseconds: 375),
        child: ScaleAnimation(
          child: FadeInAnimation(
            child: ItemCard(
              Item.items[index].title!,
              Item.items[index].image!,
              Item.items[index].rate!,
              Item.items[index].type!,
              Item.items[index].price!,
            ),
          ),
        ),
      );
                  },
                                ),
                )
           
              ),
             
             
            ],
           ),
           
         ),
    );
    
  }
  Widget iconG(){
  return Row( 
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                 Builder(
          builder: (BuildContext context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
                },
                     icon: Icon(Icons.menu_sharp,color: Colors.black,)
            );
          }),
                Row( 

                  children: [ 
                    IconButton(onPressed: (){}, icon: Icon(Icons.notifications_active_outlined,color: Colors.black,)),
                    IconButton(onPressed: (){}, icon: Icon(Icons.search,color: Colors.black,)),
                    Padding(padding: EdgeInsets.only(right: 20),
                    child: 
                     GestureDetector(
                      onTap:(){
                       Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AccountPage()),
            );
                      },
                       child: Container( 
                        height: 30,
                        width: 30,
                        
                        decoration: BoxDecoration( 
                          shape: BoxShape.circle,
                          image: DecorationImage(image: AssetImage('images/man.jpg'),fit: BoxFit.cover)
                        ),
                                           ),
                     )
                    
                    )
                   
                  ],
                )
               ],
            );
  }
}


  
