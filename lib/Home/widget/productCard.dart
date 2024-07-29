import 'package:flutter/material.dart';

class ProductCard extends StatefulWidget {
    ProductCard(this.title,this.image,this.rate,this.type,this.price,{super.key});
  String title;
  String image;
  String price;
  String rate;
  String type;


  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    double h=size.height/2.4;
    double w=size.width;
    return Scaffold(
                  extendBodyBehindAppBar: true,

      appBar: AppBar( 
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.notification_add))
        ],
        
      ),
      backgroundColor: Colors.white,
      body: Column(

        children: [ 
          Container( 
            height: h,
            width: w,
            decoration: BoxDecoration( 
              color: const Color.fromARGB(255, 208, 206, 206),
              
            ),
            child: Stack( 
              children: [ 
                Positioned(
                  top: 100, 
                  left: -100,
                 
                   
                    child:
                     Image.asset(
                      widget.image,fit: BoxFit.contain,
                      )
                  ),
               
              ],
            ),
          )
        ],

      ),
    );
  }
}