import 'package:flutter/material.dart';

class HeadCard extends StatefulWidget {
   HeadCard(this.title,this.image,{super.key});
   String title;
   String image;

  @override
  State<HeadCard> createState() => _HeadCardState();
}

class _HeadCardState extends State<HeadCard> {
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
          ],
        ),
      ),
    );
  }
}