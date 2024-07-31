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
            crossAxisAlignment:  CrossAxisAlignment.start,
        children: [ 
          Stack(
                  clipBehavior: Clip.none, 
            children:[ 
              Container( 
              height: h,
              width: w,
              decoration: BoxDecoration( 
                color: Color.fromARGB(255, 243, 240, 240),
                
              ),
            ),
               Positioned(
                top: 120, 
                left:-210,
                right: 0,
               
                 
                  child:
                   Container(
                    height: 300,
                    width: 300,
                    decoration: BoxDecoration( 
                      image: DecorationImage(
                        image: AssetImage(
                      widget.image,),fit: BoxFit.contain,
                      
                      ),
                         
                    ),
                   
                   )
                ),
                Positioned(
                  top: 120,
                  left: w/1.3,
                  
                  child: Container(
                    width: w-w/1.7,
                    child: Text(
                      widget.type,
                      maxLines: 2,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.w500
                        ),),
                  )
                   ),
                Positioned(
                  top: 150,
                  left: w/1.7,
                  
                  child: Container(
                    width: w-w/1.7,
                    child: Text(
                      widget.title,
                      maxLines: 2,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.w500
                        ),),
                  )
                   ),

                   Positioned(
                  top: 250,
                  left: w/1.3,
                  
                  child: Container(
                    width: w-w/1.7,
                    child: Text(
                      'Price',
                      maxLines: 2,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.w500
                        ),),
                  )
                   ),

                   Positioned(
                  top: 280,
                  left: w/1.3,
                  
                  child: Container(
                    width: w-w/1.7,
                    child: Text(
                      widget.price,
                      maxLines: 2,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Color.fromARGB(255, 97, 194, 100),
                        fontSize: 15,
                        fontWeight: FontWeight.w500
                        ),),
                  )
                   ),
            
        ]),
        const SizedBox(height: 50,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          

         
            Row(
              children: [
                  for(int i=0;i<5;i++)
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container( 
                    width: 25,
                    height: 25,
                    child: Icon(Icons.star,color: Colors.amber,),
                  ),
                ),
                 Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(widget.rate,style: TextStyle(color: Colors.amber,fontSize: 19,fontWeight: FontWeight.w500),),
            )
              ],
            ),
            Row( 
              children: [ 
                Padding(padding: const EdgeInsets.only(right: 10),
                child: Text('124 reviews',style: TextStyle(color: Colors.grey),),
                ),
                Icon(Icons.arrow_forward_ios,color: Colors.grey,size: 15,)
              ],
            )
           
          ],
        ),
        const SizedBox(height: 30,),
        Container( 
          margin: const EdgeInsets.only(left: 15),
          width: 300,
          child: Text( 
            'Simple & Minilimaziation',
            style: TextStyle( 
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
        const SizedBox(height: 30,),
        Container( 
          margin: const EdgeInsets.only(left: 15),
          width: 350,
          child: Text( 
            'Crafted with the highest quality materials, this item offers unparalleled performance and style. Perfect for those who demand the best, it combines elegance with functionality to meet all your needs.',
            style: TextStyle( 
              color: Colors.grey,
              fontSize: 15,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
        ],

      ),
    );
  }
}