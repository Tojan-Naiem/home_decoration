import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:home_decoration/Home/models/item.dart';
import 'package:home_decoration/Home/widget/itemCard.dart';
import 'package:home_decoration/Home/widget/line.dart';

class HeadCard extends StatefulWidget {
   HeadCard(this.title,this.image,{super.key});
   String title;
   String image;

  @override
  State<HeadCard> createState() => _HeadCardState();
}

class _HeadCardState extends State<HeadCard> {
  List <Item>list=Item.livingRoom;
  @override
  
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
            extendBodyBehindAppBar: true,

      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
     
      body: SingleChildScrollView( 
        child: Column( 
          children: [ 
            Container( 
              width: size.width,
              height: size.height/3,
              decoration: BoxDecoration( 
                image: DecorationImage(
                  image: AssetImage(widget.image,),
                  fit: BoxFit.fill,
                  colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.5),  BlendMode.srcATop,)
                  )
              ),
              child: Center( 
                    
                       child: Text(widget.title,style: TextStyle(color: Colors.white,fontSize: 30),),
                   )
                 
                
              
            ),
            const SizedBox(height: 20,),
            Line(),
            _buildAnimatedGridView()

          ],
        ),
      ),
    );
  }
   Widget _buildAnimatedGridView() {
    return AnimatedSwitcher(
      duration: Duration(milliseconds: 500),
      child: gridView(),
      switchInCurve: Curves.easeIn,
      switchOutCurve: Curves.easeOut,
    );
 }




 Widget gridView(){
  return  Container(
      key: ValueKey(list),

                width: 400,
                height: 2000,
                child: AnimationLimiter(
                  child: GridView.builder(
                    itemCount: list.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, mainAxisSpacing: 50),
                    itemBuilder: (context, index) {
                      return AnimationConfiguration.staggeredGrid(
                        position: index,
                        columnCount: 2,
                        duration: const Duration(milliseconds: 375),
                        child: ScaleAnimation(
                          child: FadeInAnimation(
                            child: ItemCard(
                              list[index].title!,
                              list[index].image!,
                              list[index].rate!,
                              list[index].type!,
                              list[index].price!,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ));
 }
 
}